from flask import Flask, redirect, render_template, request
from counter import Counter

app = Flask(__name__)
cnt = Counter()

@app.route("/")
def index():
    return render_template("index.html", value=cnt.value)

@app.route("/increment", methods=["POST"])
def increment():
    cnt.increase()
    return redirect("/")

@app.route("/reset", methods=["POST"])
def reset():
    cnt.reset()
    return redirect("/")

@app.route("/value", methods=["POST"])
def set_value():
    input_value = request.form.get("value", type=int)
    if input_value is not None:
        cnt.set_value(input_value)
    return redirect("/")