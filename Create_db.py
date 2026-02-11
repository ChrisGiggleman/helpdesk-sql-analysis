import pandas as pd
import sqlite3

csv_path = "helpdesk_tickets.csv"
db_path = "helpdesk.db"

df = pd.read_csv(csv_path)
df.columns = [c.strip().lower().replace(" ", "_") for c in df.columns]

conn = sqlite3.connect(db_path)
df.to_sql("tickets", conn, if_exists="replace", index=False)
conn.close()

print("Created helpdesk.db with table: tickets")
