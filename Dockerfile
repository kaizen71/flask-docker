FROM python:3.4.5-slim

RUN mkdir /merhaba_dunya

WORKDIR /merhaba_dunya

ADD requirements.txt .

RUN pip install -r requirements.txt

ADD . .

EXPOSE 5000

CMD ["python", "app.py", "host", "0.0.0.0"]