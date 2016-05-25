基于[webvim](https://github.com/krampstudio/webvim)修改的，增加插件、优化使用。

## 安装它:

Only tested on Mac OSx

### 依赖

1. 最新版本的Vim 7.4+  使用(`brew install macvim`)安装，vim 版本更新 `brew install macvim --override-system-vim`
2. Node.js and npm
3. 通过npm安装一些依赖`npm install -g eslint csslint jshint jsonlint handlebars`


```shell
$ git clone https://github.com/jaywcjlove/vim-web.git ~/.vim
$ ln -s ~/.vim/.vimrc ~/.vimrc
$ vim
```

**注：** 默认已经安装了前端必备插件。

## 使用基础

### 插入命令

`a` → 在光标所在字符后插入  
`A` → 在光标所在字符尾插入  
`i` → 在光标所在字符前插入  
`I` → 在光标所在行行首插入  
`o` → 在光标下插入新行  
`O` → 在光标上插入新行  

### 定位命令 

`:set number` → 设置行号 简写`set nu`  
`:set nonu` → 取消行号  
`gg` → 到第一行  
`G` → 到最后一行  
`nG` → 到第n行  
`:n` → 到第n行  
`S` → 移至行尾  
`0` → 移至行尾  
`hjkl` → 前下上后  

`w` → 到下一个单词的开头
`b` → 与w相反
`e` → 到下一个单词的结尾。
`ge` → 与`e`相反

`0` → 到行头 
`^` → 到本行的第一个非blank字符 
`$` → 到行尾 
`g_` → 到本行最后一个不是blank字符的位置。 
`fa` → 到下一个为a的字符处，你也可以fs到下一个为s的字符。 
`t,` → 到逗号前的第一个字符。逗号可以变成其它字符。 
`3fa` → 在当前行查找第三个出现的a。 
`F` 和 `T` → 和 `f` 和 `t` 一样，只不过是相反方向。 

`zz` 将当前行置于屏幕中间（不是转载…） 
`zt` 将当前行置于屏幕顶端（不是猪头~） 
`zb` 底端啦~

整页翻页 `ctrl-f` `ctrl-b`
f就是`forword` b就是`backward`

### 删除命令

`x` → 删除关闭所在处字符  
`nx` → 删除关闭所在处n个字符  
`dd` → 删除光标所在行，`ndd` → 删除n行  
`dG` → 删除光标所在行到文件末尾内容  
`D` → 删除光标所在处到行尾内容  
`:n1,n2d` → 删除指定范围的行 如：`1,2d`  

### 复制和剪切命令

> `yy` 和 p 的组合键，或者 `dd` 和 p 的组合键

`yy` → 复制当前行  
`nyy` → 复制当前行以下n行  
`dd` → 剪切当前行  
`ndd` → 剪切当前行以下n 行  
`p、P` → 粘贴在当前光标所在行或行上  
`2dd` → 删除2行
`3p` → 粘贴文本3次

### 替换和取消命令

`r` → 取代关闭所在处字符  
`R` → 从光标所在处开始替换字符，摁`ESC`结束  
`u` → 取消上一步操作  

### 保存退出

`:w` → 保存修改  
`:w new_filename` → 保存为指定文件  
`:wq` → 保存修改并推出  
`ZZ` → 快捷键，保存修改并推出  
`:q!` → 不保存修改推出  
`:wq!` → 保存修改并推出（文件所有者，root权限的用户）


### 搜索和搜索替换命令

`/string` → 搜索指定字符串，搜索时忽略大小写命令 `:set ic`  
`n` → 搜索指定字符串的下一个出现位置  
`#` → 搜索指定字符串的上一个出现位置  
`:%s/old/new/g` → 全文替换指定字符串，`%s` → 全文替换，`1,3s`指定范围替换，`g`全局替换， `c`询问替换  

### 文件菜单

```bash 
Ctrl+ww  
Ctrl+cn  
```

### 自动补齐

```bash
Ctrl-n      #匹配下一个关键字
Ctrl-p      #匹配上一个关键字
```

### 简单排版

```bash
:ce(nter)               # 居中显示光标所在行
:ri(ght)                # 靠右显示光标所在行
:le(ft)                 # 靠左显示光标所在行
J                       # 将光标所在下一行合并到光标所在行
>>                      # 光标所在行增加缩进(一个tab)
<<                      # 光标所在行减少缩进(一个tab)
n>>                     # 光标所在行开始的n行增加缩进
n<<                     # 光标所在行开始的n行减少缩进   
```

### 多tab|窗口拆分

```bash
:tabnew [++opt选项] ［＋cmd］ 文件            #建立对指定文件新的tab
:tabc      #关闭当前的tab
:tabo      #关闭所有其他的tab
:tabs      #查看所有打开的tab
:tabp      #前一个
:tabn      #后一个
```

### tab 切换

```bash
# 下面为自定义快捷键
tnew #新建tab   
tn #后一个 tab
tp #前一个 tab

#标准模式下：
gt , gT #可以直接在tab之间切换。
#还有很多他命令， 看官大人自己， :help table 吧。
#
Ctrl+ww # 移动到下一个窗口
# 或者 先按组合键ctrl+w ，然后都松开，然后通过j/k/h/l(等于vim移动的方向键) 来移动大哦哦左/上/下/右的窗口
Ctrl+wj #移动到下方的窗口
Ctrl+wk #移动到上方的窗口
```

### 切割窗口

```bash
:new    水平切割窗口
:split    水平切割窗口(或者直接输入   :sp  也可以)
:vsplit   垂直切割( 也可以  :vs  )
```

### 关闭窗口

```bash
:close  #最后一个窗口不能使用此命令，可以防止意外退出vim。
:q      #如果是最后一个被关闭的窗口，那么将退出vim。
```

### 片段折叠

```bash
zfap  #创建一个段落的折行
zc    #关闭折行
zo    #打开折行
```

### 替换

`:21,27s/^/#/g` 行首替换`#`替换（增加）掉  
`:ab mymail asdf@qq.com` 输入`mymail` 摁下空格自动替换成`asdf@qq.com`  


### 其它小技巧

- 导入命令执行接货`:r 文件路径/文件名`命令
- 找命令 `:!which ls` 不推出vim运行命令
- 查看编辑时间 `:!date`
- 组合使用 `:r !date`将当前编辑时间导入当前文本光标所在行
- gU (变大写)
- gu (变小写)

## Plugins

### 插件安装

在文件`~/.vim/plugins/def.vim` 添加一行

1. 在Github vim-scripts 用户下的repos，只需要写出repos名称
2. 在Github其他用户下的repos，需要写出 `用户名/repos名`
3. 不在Github上的插件，需要写出git全路径

打开vim，运行`:BundleInstall`或在shell中直接运行`vim +BundleInstall +qall`

### 使用界面

 - [Mango](https://github.com/goatslacker/mango.vim) A nice color scheme
 - [VimAirline](https://github.com/bling/vim-airline) Lean and mean statusbars

### 管理项目

 - [NERDTree](https://github.com/scrooloose/nerdtree) Manage your project files
 - [VimFugitive](https://github.com/tpope/vim-fugitive) Git integration
 - [VimGitGutter](https://github.com/airblade/vim-gitgutter) Git diff in the gutter
 - [EditorconfigVim](https://github.com/editorconfig/editorconfig-vim) Shared coding conventions

### 代码书写

 - [NERDCommenter](https://github.com/scrooloose/nerdcommenter) 注释更容易
 - [VimTrailingWhitespace](https://github.com/bronson/vim-trailing-whitespace) 突出尾随空格
 - [Syntastic](https://github.com/scrooloose/syntastic) 语法检查
 - [VimEasyAlign](https://github.com/junegunn/vim-easy-align) 调整部分代码
 - [VimMultipleCursors](https://github.com/terryma/vim-multiple-cursors) Write on multiple lines easily
 - [VimJsBeautify](https://github.com/maksimr/vim-jsbeautify) Reformat JavaScript, HTML and JSON files
 - [VimYankStack](https://github.com/maxbrunsfeld/vim-yankstack) Iterate over yanked stack on paste
 - [VimSurround](https://github.com/tpope/vim-surround) Quoting and parenthesizing
 - [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) Autocompletion engine
 - [VimForTern](https://github.com/marijnh/tern_for_vim) Smart JavaScript autocompletion
 - [VimNode](https://github.com/moll/vim-node) Navigate through node.js code/modules
 - [VimLint](https://github.com/syngan/vim-vimlint) Linter used by syntastic for VimL
 - [VimLParser](https://github.com/ynkdir/vim-vimlparser) VimL parser (required by VimLint)
 - [emmet-vim](https://github.com/mattn/emmet-vim) 提高HTML和CSS的工作流

### 代码阅读

 - [VimJson](https://github.com/elzr/vim-json) JSON highlighting and quote concealing
 - [YaJS](https://github.com/othree/yajs.vim) JavaScript syntax (ES5 and ES6)
 - [JavaScriptLibrariesSyntax](https://github.com/othree/javascript-libraries-syntax.vim) Syntax highlighting for well-known JS libraries
 - [VimCSS3](https://github.com/hail2u/vim-css3-syntax) CSS3 syntax
 - [ScssSyntax](https://github.com/cakebaker/scss-syntax.vim) SCSS syntax
 - [HTML5](https://github.com/othree/html5.vim) HTML5 syntax
 - [Stylus](https://github.com/wavded/vim-stylus) Stylus 代码高亮


## 插件安装使用说明

### Emmet

[Emmet.vim 中文教程](https://www.zfanw.com/blog/zencoding-vim-tutorial-chinese.html)

#### 展开缩略词

`div>p#foo$*3>a` 输入完成后，快捷键`<ctrl+y>,`生成html代码。 

#### 包入
按大写的 `V` 进入 Vim 可视模式，`行选取`上面三行内容，然后按键 `<c-y>,`，这时 Vim 的命令行会提示 `Tags:`，键入`ul>li*`，然后按 `Enter`。


`<ctrl+y>d` 根据光标位置选中整个标签   
`<ctrl+y>D` 根据光标位置选中整个标签内容   
`<ctrl-y>n` 跳转到下一个编辑点  
`<ctrl-y>N` 跳转到上一个编辑点  
`<ctrl-y>i` 更新图片大小  
`<ctrl-y>m` 合并成一行  
`<ctrl-y>k` 移除标签对  
`<ctrl-y>j` 分割/合并标签  
`<ctrl-y>/` 切换注释  
`<ctrl-y>a` 从 URL 地址生成锚  
`<ctrl-y>A` 从 URL 地址生成引用文本  

#### 帮助

`help emmet`  

### NERDTree 快捷键辑录

http://my.oschina.net/u/1030865/blog/323114

```bash
ctrl + w + h    # 光标 focus 左侧树形目录
ctrl + w + l    # 光标 focus 右侧文件显示窗口
ctrl + w + w    # 光标自动在左右侧窗口切换
ctrl + w + r    # 移动当前窗口的布局位置
o       # 在已有窗口中打开文件、目录或书签，并跳到该窗口
go      # 在已有窗口 中打开文件、目录或书签，但不跳到该窗口
t       # 在新 Tab 中打开选中文件/书签，并跳到新 Tab
T       # 在新 Tab 中打开选中文件/书签，但不跳到新 Tab
i       # split 一个新窗口打开选中文件，并跳到该窗口
gi      # split 一个新窗口打开选中文件，但不跳到该窗口
s       # vsplit 一个新窗口打开选中文件，并跳到该窗口
gs      # vsplit 一个新 窗口打开选中文件，但不跳到该窗口
!       # 执行当前文件
O       # 递归打开选中 结点下的所有目录
x       # 合拢选中结点的父目录
X       # 递归 合拢选中结点下的所有目录
e       # Edit the current dif

双击    相当于 NERDTree-o
中键    对文件相当于 NERDTree-i，对目录相当于 NERDTree-e

D       # 删除当前书签
# 
P       # 跳到根结点
p       # 跳到父结点
K       # 跳到当前目录下同级的第一个结点
J       # 跳到当前目录下同级的最后一个结点
k       # 跳到当前目录下同级的前一个结点
j       # 跳到当前目录下同级的后一个结点

C       # 将选中目录或选中文件的父目录设为根结点
u       # 将当前根结点的父目录设为根目录，并变成合拢原根结点    
U       # 将当前根结点的父目录设为根目录，但保持展开原根结点
r       # 递归刷新选中目录
R       # 递归刷新根结点
m       # 显示文件系统菜单
cd      # 将 CWD 设为选中目录

I       # 切换是否显示隐藏文件
f       # 切换是否使用文件过滤器
F       # 切换是否显示文件
B       # 切换是否显示书签
# 
q       # 关闭 NerdTree 窗口
?       # 切换是否显示 Quick Help
```


## 定义快捷键

- 定义行首添加`#`注释 ：`:map ^P I#<ESC>` 摁`ctrl + v +p` 定义快捷键I#<ESC>首行插入`#`摁`<ESC>`推出

- 定义快捷键去掉 `#` 注释：`:map ^B 0x` 跳到行首删除  


