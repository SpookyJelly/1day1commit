# 5215번 햄버거 다이어트
# SWEA level3

import sys
from pprint import pprint


def bit(arr, N, L):
    # N : 재료의 갯수
    all2 = []
    for i in range(1 << N):
        result = []
        limit = 0
        for j in range(N):
            if i & (1 << j):

                limit += arr[j][1]
                if limit > L:
                    break

                result.append(arr[j])

        all2.append(result)
    return all2


TC = int(input())
for tc in range(1, TC + 1):
    N, L = list(map(int, input().split()))  # N 재료의 수 , L = 제한 칼로리
    s = []
    for i in range(N):
        score, cal = list(map(int, input().split()))
        s.append([score, cal])

    sub_set = bit(s, N, L)
    max_score = -1
    for elem in sub_set:
        # 매 요소를 체크할때마다 값 초기화
        ham_cal = 0
        ham_score = 0

        for idx in range(len(elem)):
            ham_cal += elem[idx][1]
            ham_score += elem[idx][0]

        if ham_cal <= L and ham_score > max_score:
            max_score = ham_score

    print("#{0} {1}".format(tc, max_score))

# 엥? 런타임 에러? 메모리 너무 써서 터진거 아닌가? def가 2의 20승까지 보니까?
# def 단계에서 칼로리 넘는 애들을 치워버릴까? -> 그래도 터졌다
# 내가 볼때는 def에서 길이가 긴 리스트를 반환하려다 보니까, 터지는거 같다. 그래서 아예 반환값을 정수 하나만 해버리는게 나을거 같다
