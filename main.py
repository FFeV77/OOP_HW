from pprint import pprint
import os

file_name = 'file.txt'

def menu(file_name):
    keys = ['ingredient_name', 'quantity', 'measure']
    cook_book = {}
    with open(file_name, encoding='utf-8') as file:
        for line in file:
            dish = line.strip()
            num = int(file.readline())
            recipe = []
            for _ in range(num):
                ingridient = dict(zip(keys, file.readline().strip().split(' | ')))
                recipe.append(ingridient)
            cook_book.update({dish: recipe})
            file.readline()
    return cook_book

def get_shop_list_by_dishes(dishes:list, person_count):
    recipe = {}
    for dish in dishes:
        ingridients = menu(file_name)[dish]
        for ingridient in ingridients:
            count = int(ingridient['quantity']) * person_count
            if recipe.get(dish):
                recipe[ingridient]['quantity'] += count
            else:
                recipe[ingridient['ingredient_name']] = {'measure':ingridient['measure'], 'quantity':count}
    return recipe

def file_operator(directory):
    total = []
    files = os.listdir(directory)
    for file in files:
        file_path = os.path.join(directory, file)
        with open(file_path, encoding='utf-8') as one_file:
            data = one_file.readlines()
            total.append((file, str(len(data)), list(data)))
    total = sorted(total, key=lambda lenth: lenth[1])
    with open('total.txt', 'w', encoding='utf-8') as file:
        for line in total:
            file.write(line[0] + '\n')
            file.write(line[1] + '\n')
            file.writelines(line[2])
            file.write('\n')
    return


pprint(menu(file_name), sort_dicts=False, width=100)
pprint(get_shop_list_by_dishes(['Запеченный картофель', 'Омлет'], 2))
file_operator('files')