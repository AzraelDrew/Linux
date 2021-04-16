### Ubuntu换源

```
#复制此网站的镜像源
https://mirror.tuna.tsinghua.edu.cn/help/ubuntu/

#修改配置文件(将原先的配置文件备份)
sudo cp  /etc/apt/sources.list  /etc/apt/sources_backup.list
sudo vim /etc/apt/sources.list
```

### Chrome

```
#安装wget
sudo apt install wget  

#下载chrome.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb  

#安装chrome
sudo dpkg google-chrome-stable_current_amd64.deb  


```

### Nodejs

```
#安装curl
sudo apt install curl  

node14.x
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -   

sudo apt install nodejs

#换源
npm config set registry https://registry.npm.taobao.org

npm config get registry

#清理缓存
npm cache clean -f
```

### Telegram

```
#安装Telegram
sudo apt install telegram-desktop

#启动Telegram
telegram-desktop
```

### pip更改镜像源

```
pip config set global.index.url  镜像地址

pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
```

### Tab 补全目录不区分大小写

- 进入root
- 编辑文件

```
vim /etc/inputrc

在文件中添加如下代码
set completion-ignore-case on 
```

### 时钟同步

```
sudo apt install ntpdate
sudo nepdate time.windows.com
sudo hwclock -l -w
```

### Clash

```
#下载linux-amd64的版本

#解压 
sudo gunzip ***.gz

#重命名
mv clash***  clash

#赋予权限
chmod +x clash

#创建文件及文件夹
在～/.config下创建clash文件夹
将下载好的Country.mmdb复制到clash目录下
在clash里面创建config.yaml

#复制订阅链接
sudo curl clash托管链接 >> config.yaml

#设置网络代理
设为手动模式
http: 127.0.0.1  port: 7890
https: 127.0.0.1  port: 7890
Socks: 127.0.0.1  port: 7891

#运行clash
./clash

#打开网站选择节点
http://clash.razord.top/
```

### 空格预览

```
sudo apt install gnome-sushi
```

### Touchpad

```
https://github.com/iberianpig/fusuma

#配置文件在 .config/fusuma/config.yaml


#将用户添加到input组
sudo gpasswd -a $USER input

#应用
newgrp input

#安装libinput-tools
sudo apt-get install libinput-tools

#安装ruby
sudo apt-get install ruby

#安装Fusuma
sudo gem install fusuma

#安装xdotool
sudo apt-get install xdotool

#通过运行以下命令，确保将触摸板事件发送到GNOME桌面
gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled

#启动Fusuma
fusuma

#更新
sudo gem update fusuma

#直接在Startup Application中添加fusuma Name和Commond都一样

```

### Flameshot截图

```
sudo apt install flameshot
flameshot gui
```

### VLC

```
sudo apt install vlc
```

### SMB

```
#安装smb服务
sudo apt-get install smb*

#创建一个smb账号
sudo smbpasswd -a  ubuntu账号名称
New SMB password:			#输入账号密码
Retype new SMB password:	#再次输入账号密码

#查看当前系统中的共享文件夹列表
smbclient -L //localhost/share
```

### Skype

```
Google
```

### ZOOM

```
wget -O ./zoom.deb https://zoom.us/client/latest/zoom_amd64.deb
```

### ubuntu 删除开机启动

```
sudo  update-rc.d  apache2 remove 
```

### 查看CPU频率

```
watch grep \"cpu MHz\" /proc/cpuinfo
```

### dkpg

```
#安装软件
dpkg -i packagename

#卸载软件
dpkg -P packagename
```

### apt

```
#安装
apt install packagename

#更新
sudo apt upgrade

#删除
apt-get purge / apt-get --purge remove  #删除已安装包（不保留配置文件)

apt-get autoremove
删除为了满足依赖而安装的，但现在不再需要的软件包（包括已安装包），保留配置文件

apt-get remove
删除已安装的软件包（保留配置文件），不会删除依赖软件包，且保留配置文件

apt-get autoclean
APT的底层包是dpkg, 而dpkg 安装Package时, 会将 *.deb 放在 /var/cache/apt/archives/中，apt-get autoclean 只会删除 /var/cache/apt/archives/ 已经过期的deb

apt-get clean
使用 apt-get clean 会将 /var/cache/apt/archives/ 的 所有 deb 删掉，可以理解为 rm /var/cache/apt/archives/*.deb

# 删除软件及其配置文件
apt-get --purge remove <package>
# 删除没用的依赖包
apt-get autoremove <package>
# 此时dpkg的列表中有“rc”状态的软件包，可以执行如下命令做最后清理：
dpkg -l |grep ^rc|awk '{print $2}' |sudo xargs dpkg -P
```



### 关闭笔记本盖子不采取任何操作

```
#编辑配置文件
sudo vim  /etc/systemd/logind.conf

#将其中的:
#HandleLidSwitch=suspend

#改为：
HandleLidSwitch=ignore

#保存退出

重启
```

### Grub

```
#下载主题
https://www.gnome-look.org/browse/cat/109/page/1/ord/latest/

#解压

#安装主题

sudo ./install.sh

#利用图形界面修改Grub

#安装grub-customizer

sudo apt-get install grub-customizer

#更新配置
sudo update-grub

#重启
```

```
#修改启动设置
sudo vim /etc/default/grub
```

![](https://img-blog.csdnimg.cn/20200515024653998.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L1pDaGVuMTk5Ng==,size_16,color_FFFFFF,t_70)

### indicator-sysmonitor

```
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor

sudo apt-get update

sudo apt-get install indicator-sysmonitor
```

### GNOME

```
Coverflow Alt-Tab

Dash To Dock

GTile

Lock Keys

Top Panel Workspace Scroll
```

### 设置Terminal为英文

```
vim .bashrc

if [ "$TERM"="linux" ] ;then 
export LANGUAGE=en_US 
export LANG=en_US.UTF-8 
fi
```

### KDE

```
sudo apt build-dep kdeconnect
```

