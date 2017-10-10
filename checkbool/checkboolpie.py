import requests
from bs4 import BeautifulSoup as bs
import urllib 

url = "http://localhost:3000/checkmes/1"  # not a valid username, so we know we'll get a 4xx response
response = requests.get(url)
print(response)
print(response.text)