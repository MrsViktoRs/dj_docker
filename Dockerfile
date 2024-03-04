FROM python:3.10

RUN mkdir src
WORKDIR src

COPY . /src/

RUN pip install -r requirements.txt

CMD gunicorn -b 0.0.0.0:8000 stocks_products.wsgi:application