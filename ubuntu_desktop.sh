sudo cp -r  /etc/apt/sources.list  /etc/apt/sources_backup.list;
sudo echo "# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
 预发布软件源，不建议启用
# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse" > /etc/apt/sources.list;
sudo apt update;
sudo add-apt-repository ppa:apandada1/brightness-controller ;
sudo apt install python3 python3-pip  vim wget curl telegram-desktop gnome-sushi gnome-tweak-tool flameshot vlc grub-customizer scrcpy samba sl cmatrix brightness-controller-simple;
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple;
sudo echo "set completion-ignore-case on" >>  /etc/inputrc;
