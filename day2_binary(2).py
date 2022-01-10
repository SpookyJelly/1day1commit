# 22/01/05
#
def binary(lst, page):
    low = 0
    high = len(lst) - 1
    cnt = 0
    while low <= high:
        halfidx = int((lst[low] + lst[high]) / 2)
        if lst[halfidx] == page:
            cnt += 1
            return cnt, halfidx
        if lst[halfidx] > page:
            high = halfidx - 1
            cnt += 1
        if lst[halfidx] < page:
            low = halfidx + 1
            cnt += 1
    return -1


for tc in range(1, int(input())+1):
    P, Pa, Pb = list(map(int, input().split()))
    P = list(range(1, P+1))
    print(binary(P, Pa))
    print(binary(P, Pb))

    # 아 진짜 개야마돌게 하네 진짜. 왜 뭐가 문제야 진짜짜
