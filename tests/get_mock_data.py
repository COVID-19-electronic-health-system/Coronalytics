import requests

r = requests.get('https://corona-tracker-mock.herokuapp.com/users')
data = r.json()

for i in range(len(data)):
    print(f"{data[i]['title']} has ID: {data[i]['id']}\nHas coronavirus? {data[i]['coronavirus']['confirmed']}\n")
