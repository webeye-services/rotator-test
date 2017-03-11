#!/bin/bash


i=1
echo "$i Set begin step to 0"
python read-rotator.py "2/6/100/"

read -rsp $'Press any key or wait 5 seconds to continue...\n' -n 1 -t 5;
((i=i+1))
echo "$i Calibrate"
python read-rotator.py "2/5/"


read -rsp $'Press any key or wait 10 seconds to continue...\n' -n 1 -t 10;
((i=i+1))
echo "$i state report"
python read-rotator.py "2/7/"


read -rsp $'Press any key or wait 5 seconds to continue...\n' -n 1 -t 5;
((i=i+1))
echo "$i step left 111"
python read-rotator.py "2/1/111/"

read -rsp $'Press any key or wait 5 seconds to continue...\n' -n 1 -t 5;
((i=i+1))
echo "$i step down 111"
python read-rotator.py "2/3/111/"


read -rsp $'Press any key or wait 5 seconds to continue...\n' -n 1 -t 5;
((i=i+1))
echo "$i step up 222"
python read-rotator.py "2/4/222/"

read -rsp $'Press any key or wait 10 seconds to continue...\n' -n 1 -t 10;
((i=i+1))
echo "$i step down 111"
python read-rotator.py "2/3/111/"


read -rsp $'Press any key or wait 5 seconds to continue...\n' -n 1 -t 5;
((i=i+1))
echo "$i step by 100, NOT WORK"
python read-rotator.py "2/8/100/"


read -rsp $'Press any key or wait 5 seconds to continue...\n' -n 1 -t 5;
((i=i+1))
echo "$i step by 100, NOT WORK"
python read-rotator.py "2/8/100/"


