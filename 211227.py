def bubble(lst, K) -> list:
    N = len(lst)
    for i in range(K):
        if i < N-1:
            lst[N-1-i], lst[N-2-i] = lst[N-2-i], lst[N-1-i]
    return lst


M = int(input())

student_lst = list(map(str, range(1, M+1)))
queue = []
draw_lst = list(map(int, input().split()))

for idx in range(M):
    # 이어붙일때는 자료형 통일해라, 너무 인터프리터 믿지말고.
    queue += [student_lst[idx]]
    ans = bubble(queue, draw_lst[idx])
print(*ans)
