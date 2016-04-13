# Assignment 2.1 # 
# Count the occurences of ENST00000263967 by just using python # 

file_ = 'C://Users//M.H.Geurts//Desktop//Advanced_Bioinf//Day_2//testvcf//PIK3CA.vcf' 
Occurences = 0

with open (file_, 'r' ) as f:
    for line in f:
        if line[0] != '#':
            data = line.split('\t')
            transcript = data[7].split('|')[6]
            if transcript == 'ENST00000263967':
                occurences += 1
print(count)
            
# Assignment 2.2 #
# Crazy Python/MongoDB the answer is 25 script! # 

from pymongo import MongoClient
client = MongoClient()
db = client.PIK3CA
line_to_write = '{}\t' * 5
count = 0 
cursor = db.vcf.find()
# print the header for the final variant counting/printing 
print(line_to_write.format("Chromosome", "Position", "Depth S2", "Depth S3", "Counter"))
for document in cursor:
	if document['rec']['samples'][2] > 7 and document['rec']['samples'][3] > 7 :
		count += 1
		print(line_to_write.format(document['rec']['chr'], document['rec]'['pos'],document['rec]'['samples'][2],document['rec]'['samples'][3],count))
		
# the best part of the code! the answer actually is 25 
print("THE ANSWER IS {}!' .format(count)) 


		
			


