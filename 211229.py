# 10872번
# 재귀함수 B3

def recur(n: int) -> int:
    result = 1
    if(n > 0):
        result = n * recur(n-1)
    return result


n = int(input())
print(recur(n))
