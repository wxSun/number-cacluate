
import numpy as np
import matplotlib as plt
def  hilbert (n) :
     a=np.zeros(n*n)
     i=0
     j=0
     for i  in range(n):
         for j in range(n):
             a[i][j]=1/(i+j)
    return a[i][j]
print   hilbert( 4)
