FROM python:3.8-slim-buster

RUN pip install -U pip setuptools wheel
RUN pip install pdm

RUN pdm sync

EXPOSE 9999

CMD [ "python", "helloworld.py" ]
