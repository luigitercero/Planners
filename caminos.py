for i in range(1, 16):
  if(i % 4) != 0:
    print("(goto l"+ str(i) +" l" + str(i+1)+")")
    print("(goto l"+ str(i+1) +" l" + str(i)+")")

print (";horizontal")
for i in range(1, 16):
  if i+4 < 17 :
    print("(goto l"+ str(i) +" l" + str(i+4)+")")
    print("(goto l"+ str(i+4) +" l" + str(i)+")")
