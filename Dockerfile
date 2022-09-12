FROM python:3.10.7-slim-buster

WORKDIR /usr/

COPY . /usr/
COPY requirements.txt /usr/

RUN pip3 install -r  requirements.txt

WORKDIR /usr/Mais10Esperado

CMD ["python3", "manage.py", "runserver"]