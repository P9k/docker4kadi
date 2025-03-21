FROM python:3.9

RUN apt-get update && apt-get install -y \
    libmagic1 \
    build-essential \
    libpq-dev \
    libpcre3-dev

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
