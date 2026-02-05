import sqlite3
from pathlib import Path
import logging

BASE_DIR = Path(__file__).parent  # scripts/
PROJECT_ROOT = BASE_DIR.parent    # sql-analytics-project/

DB_PATH = PROJECT_ROOT / "database" / "ecommerce.db"
SCHEMA_FILE = PROJECT_ROOT / "sql" / "schemas.sql"
DATA_FILE = PROJECT_ROOT / "sql" / "insert_data.sql"

logging.basicConfig(level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")

def main():
    logging.info(f"Creating or connecting to database at {DB_PATH}")
    
    # Ensure the database folder exists
    DB_PATH.parent.mkdir(parents=True, exist_ok=True)

    conn = sqlite3.connect(DB_PATH)
    cursor = conn.cursor()

    # Run schema
    with open(SCHEMA_FILE, "r") as f:
        cursor.executescript(f.read())
    logging.info("Database schema created.")

    # Insert data
    with open(DATA_FILE, "r") as f:
        cursor.executescript(f.read())
    logging.info("Sample data inserted.")

    conn.commit()
    conn.close()
    logging.info("Database setup complete.")

if __name__ == "__main__":
    main()
