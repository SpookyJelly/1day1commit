# 1085 직사각형 탈출
# baekjoon B3

def calcMin(curr: int, point: int):
    half = point / 2
    if(half >= curr):
        return curr
    else:
        return point - curr


x, y, w, h = list(map(int, input().split()))

print(min(calcMin(x, w), calcMin(y, h)))
