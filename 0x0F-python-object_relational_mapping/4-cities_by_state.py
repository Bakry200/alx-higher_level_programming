#!/usr/bin/python3
"""
This script lists all cities from the database hbtn_0e_4_usa.
"""

import sys
import MySQLdb

def list_cities(username, password, dbname):
    """
    Connects to a MySQL database and lists all cities in ascending order by cities.id.

    Args:
        username (str): MySQL username
        password (str): MySQL password
        dbname (str): Database name
    """
    # Connect to MySQL server
    db = MySQLdb.connect(
        host="localhost",
        port=3306,
        user=username,
        passwd=password,
        db=dbname
    )

    # Create a cursor object to execute queries
    cursor = db.cursor()

    # Execute the query to retrieve all cities in ascending order by cities.id
    query = """
    SELECT cities.id, cities.name, states.name
    FROM cities
    JOIN states ON cities.state_id = states.id
    ORDER BY cities.id ASC
    """
    cursor.execute(query)

    # Fetch all the rows from the executed query
    cities = cursor.fetchall()

    # Print the results
    for city in cities:
        print(city)

    # Close the cursor and database connection
    cursor.close()
    db.close()

if __name__ == "__main__":
    # Retrieve command-line arguments
    username = sys.argv[1]
    password = sys.argv[2]
    dbname = sys.argv[3]

    # List cities
