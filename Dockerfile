#Using the base image with Python 3.10
FROM python:3.10
#Set our working directory as app
WORKDIR /app
#Installing Python packages through requirements.txt file
COPY .. /app

RUN pip install -r requirements.txt
#Exposing port 5000 from the container
EXPOSE 5000
#Starting the Python application
CMD ["python3", "app.py"]