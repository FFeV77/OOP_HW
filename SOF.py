import requests
from time import time


def get_questions(before_days, tag):
    to_date = int(time())
    from_date = to_date - (86400 * before_days)
    page, i = 1, 1
    url = 'https://api.stackexchange.com/2.3/questions'
    while True:
        params = {
            "page": page, 
            "pagesize": 99, 
            "fromdate": from_date, 
            "todate": to_date, 
            "order": "desc", 
            "sort": "creation", 
            "tagged": tag, 
            "site": "stackoverflow"
            }
        response = requests.get(url, params)
        if response.status_code == 200:
            questions_page = response.json()
            for item in questions_page['items']:
                print(i, item['title'])
                i += 1
            if questions_page["has_more"]:
                page += 1
            else:
                break
        else:
            print('Ошибка ', response.status_code, response.text)
            break
    return

if __name__ == '__main__':
    get_questions(1, 'python')
