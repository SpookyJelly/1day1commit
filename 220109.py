# baekjoon 1436
# s5 브루트포스

n = int(input())
cnt = 0
num = 666
while True:
    lstN = list(str(num))
    c = 0
    for i in lstN:
        if i == "6":
            c += 1
        else:
            c = 0
        if c == 3:
            cnt += 1
            break
    if cnt == n:
        break
    num += 1


print(num)
