import json
import requests

fetchData(detail):
url_initial='http://169.254.169.254/latest/meta-data/'
url_final=url_initial+detail
valueFetched=request.get(url_final)
return(valueFetched)

if __name__ == '__main__':
    specificDataToBeFetched="ami-id"
	queriedInfo=fetchData(specificDataToBeFetched)
	print(queriedInfo)
