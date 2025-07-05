clear
echo "======================="
echo "Starting" 
echo "======================="
sleep 3
clear
echo "======================="
echo "Installing dependencies"
echo "======================="
pkg install git make clang -y
clear
echo "======================="
echo "Installing dependencies"
echo "======================="
pkg install libx11 -y
clear
echo "======================="
echo "Installing dependencies"
echo "======================="
pkg install x11-repo -y
clear
echo "======================="
echo "Installing dependencies"
echo "======================="
pkg install xorgproto -y
clear
echo "======================="
echo "Installing dependencies"
echo "======================="
pkg install libxft -y
clear
echo "======================="
echo "Installing dependencies"
echo "======================="
pkg install libxinerama -y
clear
echo "======================="
echo "Installing dependencies"
echo "======================="
pkg install freetype -y
clear
echo "======================="
echo "Installing dependencies"
echo "======================="
pkg install ncurses-utils -y
clear
echo "======================="
echo "Installing dependencies"
echo "======================="
pkg install pkg-config -y
clear

echo "======================="
echo "BUILDING DWM"
echo "======================="

git clone https://git.suckless.org/dwm
cd dwm
make FREETYPEINC=$PREFIX/include/freetype2 PREFIX=$PREFIX install
cd ..
echo "======================="
echo "Completed"
echo "======================="
sleep 3
clear
echo "======================="
echo "BUILDING ST"
echo "======================="
git clone https://git.suckless.org/st
cd st
make CC=cc PREFIX=$PREFIX install
echo "======================="
echo "Completed"
echo "======================="
sleep 3
clear 
echo "======================="
echo "Exit"
echo "======================="
sleep 3


