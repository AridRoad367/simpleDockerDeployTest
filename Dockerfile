FROM python:3.11-slim
WORKDIR /app
RUN pip install Flask
COPY . .
ENV FLASK_APP=app.py
ENV FLASK_ENV=production
EXPOSE 5000
CMD ["--bind", "0.0.0.0:5000", "app:app"]
