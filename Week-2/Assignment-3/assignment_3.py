def avg(data):
    total = 0

    for i in data['products']:
        total += i['price']

    avg_price = total/len(data['products'])
    return round(avg_price, 3)