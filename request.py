import requests
r = requests.get('http://169.254.169.254/latest/meta-data/ami-id')
r.json()
