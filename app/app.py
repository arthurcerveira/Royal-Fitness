from flask import Flask, render_template, url_for

app = Flask(__name__)

@app.route('/')
def landing_page(name=None):
    return render_template('index.html', name=name)

# @app.route('/hello/')
# @app.route('/hello/<name>')
# def hello(name=None):
#     return render_template('index.html', name=name)
