FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN apt-get update && apt-get install -y --no-install-recommends netcat-traditional
RUN pip install -r requirements.txt --no-cache-dir
COPY . .
ENV PYTHONUNBUFFERED=1
EXPOSE 8000
#CMD ["python","manage.py","runserver","0.0.0.0:8000"]
RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]