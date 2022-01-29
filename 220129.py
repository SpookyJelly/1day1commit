
TC = 10
for tc in range(1, TC+1):
    t = int(input())
    arr = [list(map(int, input().split())) for x in range(100)]
    N = len(arr)

    for idx in range(N):
        if arr[99][idx] == 2:
            start = idx

    start_row = 99
    start_col = start

    #print(f'start_row :{start_row}, start_col : {start_col}')

    # 데이터 2가 들어가있는 arr의 위치
    end_point = arr[start_row][start_col]
    while True:
        # 일단 앞으로, 어짜피 end_point에서도 무조건 첫걸음은 앞으로 가는게 맞다.
        start_row -= 1
        # 만약에, 이러한 -1 정책으로 start_row가 0이 된다면, (첫행에 도달한다면) break 해준다
        if start_row <= 0:
            # print(start_col)
            break
        # 만약  현재 위치의 오른쪽 데이터가 1이면?
        # 현재 위치를 오른쪽을 1칸 옮겨주는데,
        # 근데 여기서 중요한것은, 과도한 뺑뺑이로 start_col이 99를 초과할 수 있는데,
        # 이를 and 조건으로 막아줘야한다. 여기서 더 중요한 것은, a and b 조건에서, 인터프리터는
        # a를 먼저 확인하기에, a에 범위 조건을 넣어, b에서 인덱스 에러가 나지 않게 해야한다.
        if start_col < 99 and arr[start_row][start_col+1]:
            # 오른쪽의 위치가 0이 나올때까지 뺑뻉이 돌려준다
            while arr[start_row][start_col+1]:
                start_col += 1
                # 순환중에도 start_col이 99 이상이 될 수도 있으니, while문 내부에도 break 조건을 걸어야한다.
                if start_col+1 >= 99:
                    break
        # 만약 왼쪽이 1이면? 상동하다. 왼쪽에 1이 나오지 않을때까지 뺑뺑이를 돌리는데,
        # 범위를 벗어나지 않도록 and 앞에 범위 조건을 달아준다.
        # 근데 왼쪽 열에 대해서는 범위 조건이 없어도 정상출력이 되는데, input값의 우연의 일치로 그렇게 된거지, 이거 있어야하는게 맞다
        elif start_col >= 0 and arr[start_row][start_col-1]:
            while arr[start_row][start_col-1]:
                start_col -= 1
                # 순환중에도 start_col이 0 이하가 될 수도 있으니, while문 내부에도 break 조건을 걸어야한다.
                if start_col-1 < 0:
                    break
    print(f'#{tc} {start_col}')


# 교수님의 힌트 우선순위를 잘 잡아라.--> 우선순위는 좌 우로 가는거.
# 아, 가로로 몇줄 이상 가는거..! 거기에서 중간에 처한 친구는 어떻게 처리할껀가 생각해라
# 기본 구조는 어떻게 생각???

"""
while yp < 99 :
# 방향이 필요한 경우, 방향을 뜻하는 변수 하나 잡아줘라 
# ex d: 0 -> 위에서 온거 
# ex d: 1- >왼쪽에서 온거... 이런식으로 
# ex d : 2 -> 오른쪽에서 온거
if 왼쪽 체크 and 왼쪽이나 위에서 왔으면 (이걸 pointer 사용)
xp -= 1
d =
elif 오른쪽 체크 and 오른쪽이나 위에서 왔으면
xp += 1
d = 
elif 아래쪽 체크

yp +=1
d = 
if BRD [yp][xp] == 2:
return True

return False


아니면 거꾸로 가는걸 생각해보자..

"""
