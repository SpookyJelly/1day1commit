# 1032
# baekjoon b1
import sys
sys.stdin = open('220110.txt', 'r')

n = int(input())
if(n == 1):
    print(input())

else:
    arr = []
    for i in range(n):
        arr.append(list(str(input())))

    file_len = len(arr[0])
    ans = ''

    for i in range(file_len):
        for j in range(0, n-1):
            if(arr[j][i] != arr[j+1][i]):
                ans += '?'
                break
            if(j == n-2):
                ans += arr[j][i]
    print(ans)
