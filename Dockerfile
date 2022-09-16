#base image
FROM python:3.8.13-slim

#workdir
WORKDIR /code 

COPY . .

#install dependencies
RUN pip install -r requirements.txt

#migrate database
RUN python3 manage.py migrate

EXPOSE 8000

CMD gunicorn stocks_products.wsgi --bind 0.0.0.0:8000


