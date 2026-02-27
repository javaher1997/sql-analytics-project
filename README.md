# SQL E-commerce Analytics Project

This project demonstrates SQL analytics on a simulated e-commerce database using Python (`sqlite3`) and SQLite.  

## Getting Started

1. Run `scripts/create_db.py` to create the database and insert sample data.  
2. Modify `QUERY_FILE` in `scripts/run_query.py` to point to the SQL query you want, then run the script to see the results.

## Database Schema

**Tables and columns:**

- **customers**:  
  `customer_id`, `full_name`, `email`, `country`, `signup_date`

- **products**:  
  `product_id`, `product_name`, `category`, `price`

- **orders**:  
  `order_id`, `customer_id`, `order_date`, `total_amount`, `status`

- **order_items**:  
  `order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`

## Queries

- **Basic:** simple `SELECT`s and 2-table `JOIN`s  
- **Intermediate:** aggregations, business metrics (e.g., total spending, monthly revenue, best-selling products)  
- **Advanced:** ranking, window functions, customer analytics