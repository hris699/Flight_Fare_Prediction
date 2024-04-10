#Using the base image with Python 3.10
FROM python:3.10
COPY requirements.txt /

RUN pip3 install --upgrade pip

RUN pip3 install -r /requirements.txt



COPY . /app

WORKDIR /app



EXPOSE 5000



CMD ["gunicorn","--config", "gunicorn_config.py", "app:app"]