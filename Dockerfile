FROM python:3.11-slim
WORKDIR /app
RUN pip install Flask -y
COPY . .
ENV FLASK_APP=app.py
ENV FLASK_ENV=production
EXPOSE 5000
CMD ["python", "app.py"]
