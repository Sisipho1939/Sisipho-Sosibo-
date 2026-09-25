# 🌦️ Johannesburg Live Weather Pipeline

> Built entirely on my phone 📱 | South Africa 🇿🇦

### 🔍 What This Project Does
This is a real-time ETL (Extract, Transform, Load) pipeline that:
1. **EXTRACTS** live hourly weather for Johannesburg from Open-Meteo API
2. **LOADS** data into a modern Data Lake (Parquet + SQLite)
3. **QUERIES** with SQL to find the hottest hour of the day

### 🛠️ Tech Stack
- Python, Pandas, Requests
- SQL (SQLite)
- Parquet (Data Lake format)
- Open-Meteo API

### 📊 Sample Result
```sql
SELECT time, temperature_2m FROM weather ORDER BY temperature_2m DESC LIMIT 1
-- Result: 2026-05-13 14:00 | 28.5°C 🔥
