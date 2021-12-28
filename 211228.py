# 1085 직사각형 탈출
# baekjoon B3

def calcMin(curr: int, point: int):
    half = point / 2
    if(half >= curr):
        return curr
    else:
        return point - curr


x, y, w, h = list(map(int, input().split()))


# half_x = w / 2
# half_y = h / 2
ansX = calcMin(x, w)
ansY = calcMin(y, h)

# if(half_x >= x):
#     ansX = x
# else:
#     ansX = w - x

# if(half_y >= y):
#     ansY = y
# else:
#     ansY = h-y

print(min(calcMin(x, w), calcMin(y, h)))
