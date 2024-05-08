FROM koyeb/docker-compose

RUN apk add py3-pip

WORKDIR /app

COPY requirements.txt .

RUN python -m venv /venv && /venv/bin/pip install -r requirements.txt
RUN /venv/bin/pip install -r requirements.txt


COPY . /app

CMD ["/venv/bin/python", "app.py"]
