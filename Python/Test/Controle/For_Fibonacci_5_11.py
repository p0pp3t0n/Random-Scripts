suite=[0,1]
for i in range(2,20):
    suite.append(suite[i-2]+suite[i-1])

print suite
