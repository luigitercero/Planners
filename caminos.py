exp = 7
for i in range(1, exp*exp):
  if(i % exp) != 0:
    print("(goto l"+ str(i) +" l" + str(i+1)+")")
    print("(goto l"+ str(i+1) +" l" + str(i)+")")

print (";horizontal")
for i in range(1, exp*exp):
  if i+4 <= exp*exp :
    print("(goto l"+ str(i) +" l" + str(i+4)+")")
    print("(goto l"+ str(i+4) +" l" + str(i)+")")

print (";variables")
a =""
for i in range(1, exp*exp):
  a = "l"+str(i) +" "+a
print(a)
