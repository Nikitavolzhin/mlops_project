FROM python:3.12

WORKDIR /flask_app

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

COPY app/ .

CMD [ "python", "app.py" ]