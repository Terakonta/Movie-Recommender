# syntax=docker/dockerfile:1
FROM python:3.11
WORKDIR /code
ENV FLASK_APP=./app/app.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Expose the ports for Flask and Jupyter
EXPOSE 5000
EXPOSE 8888

COPY . .
# CMD ["flask", "run", "--debug"]
