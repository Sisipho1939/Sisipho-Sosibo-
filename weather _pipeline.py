# My First Data Pipeline - by Sisipho Sosibo
# Johannesburg Weather Collector

import requests
from datetime import datetime

print("Starting Weather Pipeline...")
url = "https://api.open-meteo.com/v1/forecast?latitude=-26.2&longitude=28.04&current_weather=true"
response = requests.get(url)
data = response.json()
temp = data['current_weather']['temperature']
wind = data['current_weather']['windspeed']
time = datetime.now()
print(f"Johannesburg Weather at {time}")
print(f"Temperature: {temp}C")
print(f"Wind Speed: {wind} km/h")
print("Pipeline completed successfully!")
