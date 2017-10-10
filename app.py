import requests
from pprint import pprint

# chnange  http://localhost:3000 to api link
Hitting post request and changing the status (0 for switching off and 1 for switching onn)
r = requests.post("http://localhost:3000/acapi/edit", data={'status': 0 })


# get the status of ac (true or false)
ss = requests.get("http://localhost:3000/acapi/currentstatus")
print ss.content
