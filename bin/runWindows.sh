# 1,1
wmctrl -s 0
terminator -l one -m &
sleep 2
# 1,2
wmctrl -s 1
terminator -l two -m &
sleep 2
# 1,3
wmctrl -s 2
terminator -l three -m &
sleep 2
# 2,1
wmctrl -s 3
terminator -l four -m &
sleep 2
# 2,2
wmctrl -s 4
terminator -l five -m &
sleep 2
# 2,3
wmctrl -s 5
terminator -l six -m &
sleep 2
# 3,1
wmctrl -s 6
terminator -l seven -m &
sleep 2
# 3,2
wmctrl -s 7
terminator -l eight -m &
sleep 2
# 3,3
wmctrl -s 8
terminator -l nine -m &
sleep 2
# basa don
wmctrl -s 0

