from flask import Flask

app = Flask(__name__)

@app.route("/")
def pyapp():
  return """
  <!DOCTYPE html>
  <html>
  <body style="background-color:green;">

  <h1>PyAPP Application</h1>
  <p><h3> Version 1 </h3></p>

  </body>
  </html>
  """

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0') 