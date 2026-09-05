
import pandas as pd

# Load raw data
df = pd.read_csv('weather_data.csv')

# Day 3 Transformations
df['date'] = pd.to_datetime(df['date'])
df['temp_celsius'] = (df['temp_f'] - 32) * 5/9
df = df.dropna()
df = df.drop_duplicates()

# Save clean data
df.to_csv('clean_weather_data.csv', index=False)
print(f"Cleaned {len(df)} rows! Ready for UK employers! 🇬🇧")
