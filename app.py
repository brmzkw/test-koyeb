from flask import Flask
import time
import random

app = Flask(__name__)

@app.route('/')
def hello_world():
    rnd = random.randrange(0, 5)
    time.sleep(rnd)
    return f'Hello from Koyeb! After {rnd} seconds :)'


if __name__ == "__main__":
    app.run()
