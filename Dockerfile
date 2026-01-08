FROM python:3.9-slim
RUN apt-get update && apt-get install -y ffmpeg
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
ENV PORT=8080
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "main:app"]
