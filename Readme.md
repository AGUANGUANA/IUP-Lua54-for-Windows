# IUP_Lua54_Windows 项目介绍

## 项目介绍

**Lua** 是一个相对小众的语言, 而 **IUP** 则是这门语言的一个应用 GUI 库, 然而我本人在使用该库的时候却发现了一个不足之处, 那便是官方并没有为该库在各大主流 IDE 中的自动补全,代码高亮等提供支持等提供相应支持, 出于此目的, 我编写了一个模块用于处理程序代码与晦涩难懂的库文件之间作为桥梁, 这样就可以享受代码提示服务, 同时, 出于减少用户手动配置 IUP 时的时间成本, 我还集成了编译源码获得的库文件(基于IUP 3.30 版本), 为开发提供更多便利.

## 项目依赖

不需要外部依赖, 用户可以使用已有的Lua环境或者使用该项目提供的Lua解释器来运行脚本, 不过, 我推荐使用库文件中携带的Lua解释器, 因为这是官方自带的, 出现问题的几率更小, 而且你不用担心有关模块之间相互依赖的复杂问题(详见下文)

## 所使用的项目

[IUP - Portable User Interface (puc-rio.br)](https://www.tecgraf.puc-rio.br/iup/)

## 使用须知

- 在 IDE 中安装 **Emmylua** 插件并打开目录(安装该插件是为了实现读取注解来实现提示,你也可以尝试别的插件,他们应该有类似的功能)
- **将lua文件与库文件放在同级目录下** (注意:这很重要,因为模块依赖及Lua加载模块时的方式较为特殊,我目前认为它似乎不能很好的处理模块之间的相互依赖问题,这是权宜之计)
- 在你的lua文件中使用 ***local iup = require("myIupLua.lua")*** 然后你就可以将 iup 作为一个表来看待, 通过 ***iup.functionName*** 来调用函数, 例如 ***iup.Message("Title","Contain")***
- 使用命令行 **cd 到该目录下**, 运行 ***lua [filename.lua]*** 或者 ***.\\lua54.exe [filename.lua]*** (推荐) ,来运行你的脚本

## 学习使用 IUP Lua

请参阅以下英文官方教程来获取函数用法(不过我认为我的注解已经十分详细了,试着用一次就知道了)

[IUP - Portable User Interface (puc-rio.br)](https://www.tecgraf.puc-rio.br/iup/) 在该网站的 **Guide/Lua Binding** 目录下

## 更新日志

- 2022/05/28 立项