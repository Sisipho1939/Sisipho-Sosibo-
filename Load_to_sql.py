
import pandas as pd
import sqlite3

# Load your clean data
df = pd.read_csv('clean_weather_data.csv')

# Create database
conn = sqlite3.connect('johannesburg_weather.db')
df.to_sql('weather', conn, if_exists='replace', index=False)

print("✅ Loaded to SQL!")

# Prove it with SQL - This is interview question!
result = conn.execute("""
  SELECT date, temp_celsius 
  FROM weather 
  WHERE temp_celsius > 20 
  ORDER BY temp_celsius DESC 
  LIMIT 5
""").fetchall()

print("\nTop 5 hottest days in JHB:")
for row in result:
  print(row)
