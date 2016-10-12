from flask import Flask
app = Flask(__name__)

@app.route("/")
def time():
	import time
	ticks = time.time()	
	#print(ticks)
	ticks_int = int(ticks)
	return str(ticks_int)

if __name__ == "__main__":
    app.run()
