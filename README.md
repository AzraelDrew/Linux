## Chrome

```
#安装wget
sudo apt install wget  

#下载chrome.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb  

#安装chrome
sudo dpkg google-chrome-stable_current_amd64.deb  


```

## Nodejs

```
#安装curl
sudo apt install curl  

node14.x
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -   

sudo apt install nodejs

#换源
npm config set registry https://registry.npm.taobao.org

npm config get registry

```

## Telegram

```
#安装Telegram
sudo apt install telegram-desktop

#启动Telegram
telegram-desktop
```



## pip更改镜像源

```
pip config set global.index.url  镜像地址

pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
```

## Tab 补全目录不区分大小写

- 进入root
- 编辑文件

```
vim /etc/inputrc

在文件中添加如下代码
set completion-ignore-case on 
```

## 时钟同步

```
sudo apt install ntpdate
sudo nepdate time.windows.com
sudo hwclock -l -w
```

## Clash

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

## 空格预览

```
sudo apt install gnome-sushi
```

## Touchpad

```
https://github.com/iberianpig/fusuma

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

```

## Flameshot

```
sudo apt install flameshot
```

## VLC

```
sudo apt install vlc
```

## Sublime Text

```
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

```

## SMB

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

