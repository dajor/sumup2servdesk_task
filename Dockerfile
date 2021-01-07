# ./flask_app/Dockerfile-gunicorn
FROM python:3.8

RUN pip install Flask requests gunicorn

COPY app.py /app.py

CMD gunicorn --workers $WORKERS \
  --threads $THREADS \
  --bind 0.0.0.0:$PORT_APP \
  app:app