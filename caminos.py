for i in range(1, 400):
  if(i % 20) != 0:
    print("(goto l"+ str(i) +" l" + str(i+1)+")")
    print("(goto l"+ str(i+1) +" l" + str(i)+")")

print (";horizontal")
for i in range(1, 400):
  if i+4 <= 400 :
    print("(goto l"+ str(i) +" l" + str(i+4)+")")
    print("(goto l"+ str(i+4) +" l" + str(i)+")")

print (";variables")
a =""
for i in range(1, 400):
  a = "l"+str(i) +" "+a
#print(a)
