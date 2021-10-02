#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the matrixRotation function below.
def matrixRotation(matrix, r):
#making a clone array of the original matrix
    rows, cols = (len(matrix),len(matrix[0]))
    arr = matrix[:]
#getting the bound(in the form of index)
    if rows%2==0:
        bound=(rows//2)-1
    else:
        bound=(rows-1)//2
    run_list=[]
#performing the effective steps by unwrapping the individual layers and making them linear and making them a layer again using lin_rotate
    for n in range(0,bound+1):
        #include the exceptions
        if n==rows-1-n:
            break
        if (n+1)>cols/2:
            break
        if n==cols-1-n:
            break
        #adding top row-(last element)
        for q in range(n,cols-n-1):
            run_list.append(matrix[n][q])
        #adding right column-(last element)
        for p in range(n,rows-n-1):
            run_list.append(matrix[p][cols-n-1])
        #adding bottom row-(first element)
        for o in range(n,cols-n-1):
            run_list.append(matrix[rows-n-1][cols-o-1])
        #adding left column-(first element) 
        for s in range(n,rows-n-1):
            run_list.append(matrix[rows-s-1][n])
        lin_rotate(run_list,r,n,rows,cols,arr)
        run_list=[]                                
#print the result
    for t in arr:
        print(*t,sep=' ')
#for rotating the linear layers and updating the arr
def lin_rotate(layer,rotations,vertex,br,bc,arr):
    n=vertex
    res_rotate=rotations%(len(layer))
    rotated_list=layer[res_rotate:len(layer)]+layer[0:res_rotate]
    for i,x in enumerate(rotated_list):
        if i>=0 and i<bc-1-(2*n):
            arr[n][n+i]=x
        if i>=bc-1-(2*n) and i<(bc+br-2-(4*n)):
            arr[n+i-(bc-1-(2*n))][bc-1-n]=x
        if i>=(bc+br-2-(4*n)) and i<((2*bc)+br-3-(6*n)):
            arr[br-1-n][bc-1-n-(i-(bc+br-2-(4*n)))]=x
        if i>=((2*bc)+br-3-(6*n)) and i<=len(layer)-1:
            arr[br-1-n-(i-((2*bc)+br-3-(6*n)))][n]=x
    
         

    
    
    

    
            
if __name__ == '__main__':
    mnr = input().rstrip().split()

    m = int(mnr[0])

    n = int(mnr[1])

    r = int(mnr[2])

    matrix = []

    for _ in range(m):
        matrix.append(list(map(int, input().rstrip().split())))
    
    matrixRotation(matrix, r)