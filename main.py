import flask

app = flask.Flask('__name__')

@app.route('/')
def route():
    return "<h1>It's Root</h1>"

@app.route('/index')
def index():
    return "<h1>Hello World</h1>"

if __name__ == '__main__':
    port = os.environ.get("PORT","5000")
    app.run(host='0.0.0.0', port=port)