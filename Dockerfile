FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
RUN apk --update add bash nano
ENV STATIC_URL /static
ENV STATIC_PATH /var/www/app/static
COPY ./requirements.txt /var/www/requirements.txt
RUN pip install -r /var/www/requirements.txt
RUN apk add --no-cache postgresql-dev
RUN apk add --virtual build-deps gcc python-dev musl-dev
RUN apk add postgresql-client
RUN pip install psycopg2-binary
