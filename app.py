from flask import Flask, render_template

# creates the flask application
app = Flask(__name__)
app.jinja_env.auto_reload = True
app.config['TEMPLATES_AUTO_RELOAD'] = True

# Home page route
@app.route('/')
def home():
    return render_template('index.html')
def before_request():
    app.jinja_env.cache = {}

# run the application
if __name__ == '__main__':
    app.run(host='0.0.0.0')
