from urllib import response
from requests import request
import requests
from pprint import pprint


class YaUploader:
    def __init__(self, token: str):
        self.token = token

    def get_headers(self):
        return {
            'Content-Type': 'application/json',
            'Authorization': 'OAuth {}'.format(self.token)
        }

    def get_href(self, file_path: str):
        url = 'https://cloud-api.yandex.net/v1/disk/resources/upload'
        params = {'path': file_path, "overwrite": "true"}
        headers = self.get_headers()
        response = requests.get(url=url, params=params, headers=headers)
        return response.json()

    def upload(self, file_path: str):
        """Метод загружает файлы по списку file_list на яндекс диск"""
        # Тут ваша логика
        # Функция может ничего не возвращать
        filename = path_to_file
        href = self.get_href(file_path)['href']
        params = {'path': file_path, "overwrite": "true"}
        headers = self.get_headers()
        response = requests.put(url=href, data=open(filename, 'rb'))
        if response.status_code == 201:
            print('Success')
        return


if __name__ == '__main__':
    # Получить путь к загружаемому файлу и токен от пользователя
    path_to_file = 'test.txt'
    token = ...
    uploader = YaUploader(token)
    result = uploader.upload(path_to_file)