import flask

app = flask.Flask('__main__')

@app.route('/index')
def index():
    return "<h1>Hello World</h1>"

if __name__ == '__main__':
    app.run()