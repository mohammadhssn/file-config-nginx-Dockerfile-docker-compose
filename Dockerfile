FROM python:3.9.7-buster

WORKDIR /code

COPY requirements.txt /code/

RUN pip install -U pip
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /code/

EXPOSE 8000

CMD ["gunicorn", "A.wsgi", ":8000"]
