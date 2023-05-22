import numpy as np
import time
import math

def byString(num):
	slen = len(str(num))
	if ((slen&1) == 0):
		retval = num
	else:
		retval =  0
	return retval

def byStringModulo(num):
	slen = len(str(num))
	if ((slen%2) == 0):
		retval = num
	else:
		retval =  0
	return retval


def byLog10(num):
	slen = int(math.log10(num)+1)
	if ((slen&1) == 0):
		retval = num
	else:
		retval =  0
	return retval


def byLog10Modulo(num):
	slen = int(math.log10(num)+1)
	if ((slen%2) == 0):
		retval = num
	else:
		retval =  0
	return retval




def numDigits(num):
	if (num == 0):
 		return 1;
	count = 0;
	while (num != 0) :
		num = int(num / 10)
		count = count + 1
	return count


def recursion(i):
	n= int(i/10)
	if (n ==  0):
		return 1
	return 1 + recursion(n)


def byDivision(i):
	slen = numDigits(i)
	if ((slen&1) == 0):
		retval = i
	else:
		retval =  0
	return retval

def byRecursiveDiv(i):
	slen = recursion(i)
	if ((slen&1) == 0):
		retval = i
	else:
		retval =  0
	return retval




nums = np.fromfile("integers.bin",  dtype=np.int32)

total_perf = 0
for z in range(1,100):

	count = 0
	numbers = 0
	start = time.perf_counter()
	for n in nums:
		numbers = numbers + 1
		b = byString(n)
		if  (b>>0):
			count = count+1
			#print(n)
	stop = time.perf_counter()
	perf = stop - start
#	print ("Bitwise String Test")
#	print (count," Numbers of Even Digits in ",numbers," Integers")
#	print ("Time Spent : ",perf)
	total_perf = total_perf + perf
print("Python : byString:  Total : ",total_perf," : Average : ",total_perf/100)


total_perf = 0
for z in range(1,100):

	count = 0
	numbers = 0
	start = time.perf_counter()
	for n in nums:
		numbers = numbers + 1
		b = byStringModulo(n)
		if  (b>>0):
			count = count+1
			#print(n)
	stop = time.perf_counter()
	perf = stop - start
#	print ("Modulo String Test")
#	print (count," Numbers of Even Digits in ",numbers," Integers")
#	print ("Time Spent : ",perf)
	total_perf = total_perf + perf
print("Python : byStringModulo : Total : ",total_perf," :  Average : ",total_perf/100)


total_perf = 0
for z in range(1,100) :

	count = 0
	numbers = 0
	start = time.perf_counter()
	for n in nums:
	        numbers = numbers + 1
	        b = byLog10(n)
	        if  (b>>0):
	                count = count+1
	                #print(n)
	stop = time.perf_counter()
	perf = stop - start
#	print ("Bitwise Log10 Test")
#	print (count," Numbers of Even Digits in ",numbers," Integers")
#	print ("Time Spent : ",perf)
	total_perf = total_perf + perf
print("Python : byLog10 :  Total : ",total_perf," : Average : ",total_perf/100)


total_perf = 0
for z in range(1,100):

	count = 0
	numbers = 0
	start = time.perf_counter()
	for n in nums:
	        numbers = numbers + 1
	        b = byLog10Modulo(n)
	        if  (b>>0):
	                count = count+1
	                #print(n)
	stop = time.perf_counter()
	perf = stop - start
#	print ("Modulo Log10 Test")
#	print (count," Numbers of Even Digits in ",numbers," Integers")
#	print ("Time Spent : ",perf)
	total_perf = total_perf + perf
print("Python : byLog10Modulo : Total : ",total_perf," :  Average : ",total_perf/100)


total_perf = 0
for z in range(1,100):

	count = 0
	numbers = 0
	start = time.perf_counter()
	for n in nums:
	        numbers = numbers + 1
	        b = byDivision(n)
	        if  (b>>0):
	                count = count+1
	                #print(n)
	stop = time.perf_counter()
	perf = stop - start
#	print ("Division Test")
#	print (count," Numbers of Even Digits in ",numbers," Integers")
#	print ("Time Spent : ",perf)
	total_perf = total_perf + perf
print("Python : byDivision :  Total : ",total_perf," : Average : ",total_perf/100)


total_perf = 0
for z in range(1,100):

	count = 0
	numbers = 0
	start = time.perf_counter()
	for n in nums:
	        numbers = numbers + 1
	        b = byRecursiveDiv(n)
	        if  (b>>0):
	                count = count+1
	                #print(n)
	stop = time.perf_counter()
	perf = stop - start
#	print ("Recursive Division Test")
#	print (count," Numbers of Even Digits in ",numbers," Integers")
#	print ("Time Spent : ",perf)
	total_perf = total_perf + perf
print("Python : byRecursiveDiv :  Total : ",total_perf," : Average : ",total_perf/100)
