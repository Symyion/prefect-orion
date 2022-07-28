FROM prefecthq/prefect:2.0.0-python3.9-conda

RUN apt update && \
    apt install -y vim && \
    pip install psycopg2-binary s3fs