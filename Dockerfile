FROM python:3.9-slim

WORKDIR /app

# Install pip and dependencies
COPY app/requirements.txt .

RUN apt-get update \
    && apt-get install -y --no-install-recommends python3-pip \
    && pip install --no-cache-dir -r requirements.txt \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY app/ ./
EXPOSE 80
CMD ["python", "app.py"]
