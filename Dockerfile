FROM python:3.8.0

ENV PYTHONBUFFERED=1

WORKDIR /code

COPY ./requirement.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python3","manage.py","runserver"]