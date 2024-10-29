FROM alpine:3.20.2
RUN apk add --no-cache python3 py3-psycopg2 py3-pip py3-virtualenv uwsgi-python3 py3-cryptography xmlsec py3-openssl

RUN mkdir -p \
	/code \
	/code/my_django_template \
	/code/my_django_template/jinja2/my_django_template \
	/code/my_django_template/management/commands \
	/code/my_django_template/migrations \
	/code/my_django_template/static/my_django_template

RUN virtualenv --system-site-packages /code/venv
ADD requirements.txt /tmp
RUN /code/venv/bin/pip install -r /tmp/requirements.txt

ADD my_django_template/*.py /code/my_django_template/
ADD my_django_template/management/commands/*.py /code/my_django_template/management/commands/
ADD my_django_template/migrations/*.py /code/my_django_template/migrations/
ADD my_django_template/jinja2/my_django_template/*.html /code/my_django_template/jinja2/my_django_template/
ADD my_django_template/static/my_django_template/* /code/my_django_template/static/my_django_template/
