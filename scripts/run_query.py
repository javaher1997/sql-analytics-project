import sqlite3
import pandas as pd
from pathlib import Path

# Paths
BASE_DIR = Path(__file__).parent.parent  # project root
DB_PATH = BASE_DIR / "database" / "ecommerce.db"
QUERY_FILE = BASE_DIR / "sql" / "queries" / "orders_with_customers.sql"

def run_query():
    # Connect to the database
    conn = sqlite3.connect(DB_PATH)

    # Read the query from the file
    with open(QUERY_FILE, "r") as f:
        query = f.read()

    # Execute query and get results as DataFrame
    df = pd.read_sql_query(query, conn)

    # Close connection
    conn.close()

    # Show DataFrame
    print(df)
    return df

if __name__ == "__main__":
    df = run_query()
