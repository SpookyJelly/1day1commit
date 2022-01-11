# 4875 미로 (D2)
# SWEA


def delta(stack):
    dr = [-1, 1, 0, 0]
    dc = [0, 0, -1, 1]
    stack.append(S)
    visited[S[0]][S[1]] = True
    while stack:
        (r, c) = stack.pop()
        if maze[r][c] == '3':
            return 1

        for i in range(4):
            nr = r + dr[i]
            nc = c + dc[i]

            if 0 <= nr < N and 0 <= nc < N and not visited[nr][nc] and maze[nr][nc] != '1':
                visited[nr][nc] = True
                stack.append((nr, nc))

    return 0


TC = int(input())

for tc in range(1, TC + 1):
    N = int(input())
    Sf = False
    maze = []
    for i in range(N):
        tem = list(input())
        if not Sf and '2' in tem:
            S = [i, tem.index('2')]
            Sf = True

        maze.append(tem)

    stack = []
    visited = [[False] * N for _ in range(N)]
    ans = delta(stack)
    print('#{0} {1}'.format(tc, ans))
