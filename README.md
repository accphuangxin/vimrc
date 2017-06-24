安装说明
  1、git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  2、打开vim 输入命令:BundleInstall
  3、安装ctags sudo yum install ctags
  4、git config --global core.editor "vim" 设置git使用vim

注意事项
1、安装前请自行备份好home目录下的.vimrc 和 .vim
2、让linux支持256色显示  在~/.bashrc文件里添加一下代码 然后让文件生效：source ~/.bashrc
  
    if [ -e /usr/share/terminfo/x/xterm-256color ]; then
            export TERM='xterm-256color'
          else
            export TERM-'xterm-color'
    fi

快捷键说明
  <F3> : 启动目录树
  <F4> : 启动函数列表
  <F6> : 生成tags
  <F9> : 粘贴模式切换
  <ctrl> + p : 启动ctrlp 查看缓存文件
