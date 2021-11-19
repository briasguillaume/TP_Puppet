from flask import Flask

app = Flask(__name__)

@app.route("/guillaume")
def hello():
    return "Guillaume app"
