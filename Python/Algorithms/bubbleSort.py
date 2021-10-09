def bubbleSort(lst):
    n = len(lst)-1
    for i in range(0, n):
        for j in range(n, i, -1):
            if lst[j]<lst[j - 1]:
                lst[j], lst[j - 1] = lst[j - 1], lst[j]
def main():
    lst = eval(input('Enter The List: '))
    print('~~~~~~~~~~~~')
    print('Sorted List')
    bubbleSort(lst)
    print(lst)
    
if __name__=='__main__':
      main()
