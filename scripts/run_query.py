import sqlite3
import pandas as pd
from pathlib import Path
import argparse

# Paths
BASE_DIR = Path(__file__).parent.parent  # project root
DB_PATH = BASE_DIR / "database" / "ecommerce.db"
QUERY_FILE = BASE_DIR / "sql" / "queries" / "intermediate" / "revenue_per_product.sql"
QUERIES_DIR = BASE_DIR / "sql" / "queries" / "intermediate" 

def run_query(query_filename: str):

    # Construct the full path to the query file
    query_file_path = QUERIES_DIR / query_filename

    # Check if the query file exists
    if not query_file_path.exists():
        print(f"Error: Query file not found at {query_file_path}")

    # Connect to the database
    conn = sqlite3.connect(DB_PATH)

    try:
        # Read the query from the file
        with open(QUERY_FILE, "r") as f:
            query = f.read()
    except Exception as e:
        print(f"Error reading query file {query_file_path}: {e}")
        conn.close()
        return None

    try: 
        # Execute query and get results as DataFrame
        df = pd.read_sql_query(query, conn)
    except Exception as e:
        print(f"Error executing query: {e}")
        conn.close()
        return None

    # Close connection
    conn.close()

    # Show DataFrame
    print(df)
    return df

if __name__ == "__main__":

    parser = argparse.ArgumentParser(description="Run SQL queries from a specified file.")
    
    # Define the argument for the query filename
    parser.add_argument(
        "query_filename", 
        type=str, 
        help="The name of the SQL query file to run (e.g., revenue_per_product.sql)"
    )

    args = parser.parse_args()
    df = run_query(args.query_filename)
