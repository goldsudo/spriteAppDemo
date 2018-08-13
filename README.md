# 你好！欢迎使用 sprite
sprite是一个轻量级的移动SPA(single page web application，即单页web应用)开发框架，你只需学会Vue的相关语法，即可利用sprite快速的开发你的应用。

## 安装与启动
启动应用需要在本地启动一个服务，本项目是纯前端项目，因此简单的使用node作为服务器。
1. 安装node，node官方下载地址：https://nodejs.org/en/download/
2. clone该项目，或者直接下载项目代码到本地
3. 在本地的当前项目目录，使用shell(windows使用cmd或者PowerSheel)执行命令：node ./server.js
4. 打开浏览器，输入url: http://127.0.0.1:8080 
5.如果使用的是chrome浏览器，按下F12打开浏览器的开发者模式，并切换成终端调试模式（其他浏览器请自行搜索如何打开终端调试模式）
6. 浏览器展示如下的页面，则代表应用启动成功：
![image](https://github.com/goldsudo/sprite-frame/blob/master/SNAP-SHOT/home.png?raw=true)

## 学习与使用
如果在本地启动了sprite应用后，可以直接跟着应用中的导航进行学习与使用，也可参考下文的描述：

### sprite框架介绍
sprite是一个轻量级的移动SPA (single page web application，即单页web应用)开发框架，你只需学会Vue的相关语法，即可利用sprite快速的开发你的应用。

#### sprite特性介绍
sprite是基于require,Vue,Vue-router,zepto,axios,mint-ui等前端框架以及UI库开发的，具备如下特性：
1. **团队协作：** 利用了require的模块加载功能实现了应用的模块化开发
2. **配置简单：** 仅需一个配置文件以及极少的配置项即可完成复杂的功能
3. **学习门槛低：** sprite应用采用纯ES5语法编写，适合刚入门的前端开发者使用
4. **易于debug：** 由于sprite出于轻量的考虑没有引入打包与压缩等功能，因此debug体验友好
5. **高效开发：** sprite屏蔽了一些复杂而无趣的工作，如Vue与Vuerouter的初始化、应用加载模式控制、组件加载、权限控制等，从而使得开发者可以专注于业务逻辑的开发

#### sprite功能介绍
sprite提供了很多利于开发者快速进行应用开发的功能：
1. **可配置的多首页：** 你当前所浏览的这个应用就是利用了可配置的多首页功能，因此你可以看到屏幕底部有多个菜单以供选择，这并不需你来写额外的代码，只需简单的配置即可
2. **可配置的页面加载方式：** 仅需修改一个变量，即可控制应用的加载模式是一次性加载全部页面，以获得快速的页面切换效果；还是延迟加载页面，以提升应用初始化速度并且为用户节省流量
3. **支持递归嵌套的子页面：** 和Vue-router支持嵌套子路由一样，sprite也支持嵌套子页面
4. **灵活的组件模式：** sprite支持配置应用中所有页面都可使用的公共组件，也支持为某些页面配置局部共享的页面组件
5. **页面权限与按钮权限：**sprite支持为不同用户配置不同的页面权限与按钮权限，仅需简单的配置即可实现
6. **封装好的http请求方法：** 我在sprite中对axios进行了封装，提供了doGet与doPost两个执行http请求的方法，在你的代码中用如下代码即可调用：
```
var spriteUtil = require("spriteUtil");
spriteUtil.doGet({url:...,
	params:{...}
	}).then(function(res){
     //do something
 });
```

#### 开始编写你的第一个sprite页面
 使用sprite进行页面开发前，你需要具备Vue的基础知识，之后你还需要适应sprite要求的开发规范，详情请参考“入门”菜单，以及对应的代码实现

####  sprite系列博文
我在我的博客上记录了我实现sprite框架的详细过程，感兴趣的话可以去看看哦：http://goldsudo.com/develop/spriteframe
 注：博文中的代码不是最新的，如需阅读源码还请参考本项目的代码

#### sprite彩蛋
1. 框架名为什么取sprite呢？
我养了两只猫，小的那只叫咖啡，而大的那只叫雪碧

2.打开浏览器(快捷键F12)的console
当sprite应用初始化完成后，会在console中打印庆祝提示，have fun!~

### 常规页面
![image](https://github.com/goldsudo/sprite-frame/blob/master/SNAP-SHOT/start.png?raw=true)
### 嵌套子页面
![image](https://github.com/goldsudo/sprite-frame/blob/master/SNAP-SHOT/children.png?raw=true)
### 公共组件与页面组件
![image](https://github.com/goldsudo/sprite-frame/blob/master/SNAP-SHOT/comp.png?raw=true)
### 页面权限与按钮权限
![image](https://github.com/goldsudo/sprite-frame/blob/master/SNAP-SHOT/auth.png?raw=true)
![image](https://github.com/goldsudo/sprite-frame/blob/master/SNAP-SHOT/role.png?raw=true)
![image](https://github.com/goldsudo/sprite-frame/blob/master/SNAP-SHOT/role1.png?raw=true)
![image](https://github.com/goldsudo/sprite-frame/blob/master/SNAP-SHOT/button-auth.png?raw=true)
### Tab页的开发技巧
![image](https://github.com/goldsudo/sprite-frame/blob/master/SNAP-SHOT/tab.png?raw=true)
