# 1010번 baekjoon
# s5


def factorial(num: int) -> int:
    result = 1
    if num == 1:
        return result * num
    return num * factorial(num - 1)


def head(num: int, count: int) -> int:
    result = 1
    if count == 1:
        return result * num
    return num * head(num - 1, count - 1)


for i in range(int(input())):
    n, m = map(int, input().split())
    numberator, denominator = head(m, n), factorial(n)
    print(numberator // denominator)
