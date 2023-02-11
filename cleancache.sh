echo "Choose number:\n1-EXIT\n2-CLEAN CACHE\n3-CLEAN CACHE AND POWEROFF\n4-CLEAN CACHE AND REBOOT\n5-EXIT TERMINAL\n6-CLEAN CACHE AND EXIT TERMINAL"
read number
if [ $number -eq "1" ];
then
  exit
fi
if [ $number -eq "2" ];
then
  cd ~/.cache/
  rm -rf *
  exit
fi
if [ $number -eq "3" ];
then
  cd ~/.cache/
  rm -rf *
  poweroff
fi
if [ $number -eq "4" ];
then
  cd ~/.cache/
  rm -rf *
  reboot
fi
if [ $number -eq "5" ];
then
  kill -25 $PPID
fi
if [ $number -eq "6" ];
then
  cd ~/.cache/
  rm -rf *
  kill -25 $PPID
fi
