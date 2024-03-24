FROM python:3.10.12
RUN apt-get update 
WORKDIR /app
ENV REDIS_HOST=redis
COPY . .
run pip install --no-cache-dir -r requirements.txt 
CMD ["flask", "run", "--host=0.0.0.0"]

