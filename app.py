import json
from flask import Flask, request

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def hello_world():
    ret = {
        'args': dict(request.args)
    }

    try:
        ret['data_json'] = request.json
    except:
        ret['data'] = request.data.decode('utf-8')

    formatted = json.dumps(ret, indent=2)
    print(formatted)

    return formatted


if __name__ == "__main__":
    app.run()
