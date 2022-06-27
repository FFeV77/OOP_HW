import requests
from pprint import pprint

class Hero:
    def __init__(self, id):
        self.id = id
        self.name = self.get_params()["name"]
        self.intelligence = self.get_params()["powerstats"]["intelligence"]

    def get_params(self):
        request = 'https://akabab.github.io/superhero-api/api/id/' + str(self.id) + '.json'
        response = requests.get(request)
        hero_data = response.json()
        return hero_data

    def __lt__(self, other):
        if isinstance(other, Hero):
            return self.intelligence < other.intelligence

    def __str__(self):
        return self.name

if __name__ == '__main__':
    hulk = Hero(332)
    captain_america = Hero(149)
    tanos = Hero(655)
    print(max(hulk, captain_america, tanos))
