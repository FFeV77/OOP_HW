class Student:
    def __init__(self, name, surname, gender):
        self.name = name
        self.surname = surname
        self.gender = gender
        self.finished_courses = []
        self.courses_in_progress = []
        self.grades = {}

    def __str__(self):
        return f'''
Имя: {self.name}
Фамилия: {self.surname}
Средняя оценка за домашние задания: {self.__grade_average()}
Курсы в процессе изучения: {", ".join(self.courses_in_progress)}
Завершенные курсы: {", ".join(self.finished_courses)}'''
    
    def __lt__(self, other):
        if isinstance(other, Student):
            return self.__grade_average() < other.__grade_average()

    def __grade_average(self):
        grades = []
        for values in self.grades.values():
            grades.extend(values)
        return round(sum(grades) / len(grades), 2) if grades != 0 else 0

    def add_courses(self, course_name):
        self.courses_in_progress.append(course_name)  

    def rate_lection(self, lecturer, course, rate):
        if isinstance(lecturer, Lecturer) and course in lecturer.courses_attached and course in self.courses_in_progress and 0 <= rate <= 10:
            if course in lecturer.rate_lection:
                lecturer.rate_lection[course] += [rate]
            else:
                lecturer.rate_lection[course] = [rate]
        else:
            return 'Ошибка'
        
class Mentor:
    def __init__(self, name, surname):
        self.name = name
        self.surname = surname
        self.courses_attached = []

    def attach_courses(self, course_name):
        self.courses_attached.append(course_name) 
        
class Lecturer(Mentor):
    def __init__(self, name, surname):
        super().__init__(name, surname)
        self.rate_lection = {}

    def __lt__(self, other):
        if isinstance(other, Lecturer):
            return self.__rate_average() < other.__rate_average()

    def __str__(self):
        return f'''
Имя: {self.name}
Фамилия: {self.surname}
Средняя оценка за лекции: {self.__rate_average()}'''

    def __rate_average(self):
        rates = []
        for values in self.rate_lection.values():
            rates.extend(values)
        return round(sum(rates) / len(rates), 2) if rates != 0 else 0

class Reviewer(Mentor):
    def rate_hw(self, student, course, grade):
        if isinstance(student, Student) and course in self.courses_attached and course in student.courses_in_progress:
            if course in student.grades:
                student.grades[course] += [grade]
            else:
                student.grades[course] = [grade]
        else:
            return 'Ошибка'

    def __str__(self):
        return f'''
Имя: {self.name}
Фамилия: {self.surname}'''

def grade_average(students:list, course):
    grades = []
    for student in students:
        if isinstance(student, Student) and student.grades.get(course):
            grades.extend(student.grades[course])
        else:
            continue
    return sum(grades) / len(grades) if grades else 'Нет оценок'

def rate_average(lecturers:list, course):
    rates = []
    for lecturer in lecturers:
        if isinstance(lecturer, Lecturer) and lecturer.rate_lection.get(course):
            rates.extend(lecturer.rate_lection[course])
        else:
            continue
    return sum(rates) / len(rates) if rates else 'Нет оценок'

#Создаем студентов
best_student = Student('Ruoy', 'Eman', 'your_gender')
best_student.add_courses('Python')
best_student.add_courses('Java')
second_student = Student('Taiqa', 'Waititi', 'other_gender')
second_student.add_courses('Python')
second_student.add_courses('C#')

#Создаем ревьюверов
cool_mentor = Reviewer('Some', 'Buddy')
cool_mentor.attach_courses('Python')
other_mentor = Reviewer('Bad', 'Guy')
other_mentor.attach_courses('C#')

#Создаем лекторов
lector = Lecturer('Another', 'Guy')
lector.attach_courses('Python')
lector.attach_courses('Java')
lector1 = Lecturer('Lora', 'Palmer')
lector1.attach_courses('Python')
lector1.attach_courses('C#')

#Оцениваем лекции
best_student.rate_lection(lector, 'Python', 10)
best_student.rate_lection(lector, 'Python', 9)
best_student.rate_lection(lector, 'Java', 9)
second_student.rate_lection(lector1, 'Python', 8)
second_student.rate_lection(lector1, 'Python', 6)
second_student.rate_lection(lector1, 'C#', 9)

#Оцениваем домашнее задание
cool_mentor.rate_hw(best_student, 'Python', 10)
cool_mentor.rate_hw(best_student, 'Python', 10)
other_mentor.rate_hw(best_student, 'Java', 10)
cool_mentor.rate_hw(second_student, 'Python', 9)
cool_mentor.rate_hw(second_student, 'Python', 10)
other_mentor.rate_hw(second_student, 'C#', 1)

#Вызываем
print(best_student)
print(cool_mentor)
print(lector)
print(lector1 > lector)
print(second_student > best_student)

print(grade_average([best_student, second_student], 'Python'))
print(rate_average([lector, lector1], 'Python'))
