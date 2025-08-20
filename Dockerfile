FROM python:3.9-slim
WORKDIR /app
COPY app/requirements.txt .
RUN apt install -y python3-pip && pip install -r requirements.txt
COPY app/ ./
EXPOSE 80
CMD ["python","app.py"]
