
from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime

def extract():
    print("1. Ngikhipha isimo se Jozi...")

def transform():
    print("2. Ngihlanza idatha...")

def load():
    print("3. Ngifaka ku-database!")

with DAG(dag_id='jhb_weather_daily', start_date=datetime(2026,9,13), schedule='@daily', catchup=False) as dag:
    t1 = PythonOperator(task_id='extract', python_callable=extract)
    t2 = PythonOperator(task_id='transform', python_callable=transform)
    t3 = PythonOperator(task_id='load', python_callable=load)
    t1 >> t2 >> t3
