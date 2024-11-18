FROM python:3.12

WORDIR /code

COPY ./requeriments.txt /code/requeriments.txt 

RUN pip install --no-cache-dir --upgrade -r /code/requeriments.txt

COPY ./app /code/app

CMD ["fastapi", "run", "app/main.py", "--port", "80"]