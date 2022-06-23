import requests
from pprint import pprint
from datetime import datetime, timedelta


def get_questions(before_days, tag):
    to_date = datetime.date(datetime.today())
    from_date = to_date - timedelta(days=before_days)
    url = 'https://api.stackexchange.com/2.3/questions'
    params = {"fromdate": from_date, "todate": to_date, "order": "desc", "sort": "creation", "tagged": tag, "site": "stackoverflow"}
    response = requests.get(url, params)
    i = 1
    for item in response.json()['items']:
        print(i, item['title'])
        i += 1
    return

get_questions(2, 'python')
