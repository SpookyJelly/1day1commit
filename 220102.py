# 11729  하노이탑 이동문제
# bakjoon S2

arr = []


def hanoi(n: int, start: int, desti: int, via: int) -> int:
    # 1개의 원반을 시작에서 끝으로
    if(n == 1):
        arr.append([start, desti])
        return

    # n-1개를 시작점에서 중개점으로 이동(종착점을 중개해서)
    hanoi(n-1, start, via, desti)
    # n-1개가 보조로 이동 끝났으니, 1개의 원판을 시작에서 종착역으로
    arr.append([start, desti])
    # print(start, desti)

    # 가장 큰게 움직였으니, 남아있는 보조 원반들을  목적지로 이동 (시작점을 중개해서)
    hanoi(n-1, via, desti, start)


hanoi(int(input()), 1, 3, 2)

print(len(arr))
for i in range(len(arr)):
    # print(arr[i][0], arr[i][1])
    print(*arr[i])
