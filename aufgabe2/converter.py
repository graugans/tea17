import csv

price_list = [] 


f = open('data.csv', 'rb')
try:
    reader = csv.DictReader(f)
    for row in reader:
	price_list.insert(0, "{0}\t {1}" .format( str(row['date']), row['monthly']))
finally:
    f.close()
    for i, v in enumerate(price_list):
        print v
