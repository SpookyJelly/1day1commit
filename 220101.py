# 피보나치수
# baekjoon b2 (10870)


def fibo(n: int) -> int:
    if n == 0:
        return 0
    if n == 1:
        return 1
    if n >= 2:
        return fibo(n - 1) + fibo(n - 2)


n = int(input())
print(fibo(n))
