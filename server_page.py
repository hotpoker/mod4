from bottle import route, run, view, os
from datetime import datetime as dt

cwd = os.path.join(os.getcwd(), 'views', 'two_servers.tpl')
@route("/")
@view(cwd)
def api_test():
	now = dt.now()
	return{
    	"today": f"{now.day}-{now.month}-{now.year}"
	}

run(
  host="localhost",
  port=8000,
  autoreload=True
)