# baekjoon 2750
# 수 정렬하기 B1

import sys

sys.stdin = open('220104.txt', 'r')

arr = []
n = int(input())
for i in range(n):
    arr.append(int(input()))

for i in range(n):
    for j in range(n-i-1):
        if(arr[j] > arr[j+1]):
            arr[j+1], arr[j] = arr[j], arr[j+1]

for i in arr:
    print(i)
