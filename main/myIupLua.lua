local M = {}

require("iuplua")
require("iupluacontrols")

--有关Api文档信息,请参阅 https://www.tecgraf.puc-rio.br/iup/ 下的 Lua Binding 条目获取更多信息
--本模块基于上述网站内容编写

---显示一个窗口,拥有标题和内容
---@param title Title
---@param contain Contail
M.Message = function(title, contain)
    iup.Message(title, contain)
end

---显示一个提问框,显示三个按钮
---@return 按下按钮的编号,从1开始
M.Alarm = function(title, question, but1, but2, but3)
    return iup.Alarm(title, question, but1, but2, but3)
end

---显示一个Windows文件打开窗口
---@return filePath文件的路径 errCode错误码
M.GetFile = function(fileType)
    return iup.GetFile(fileType)
end

---显示一个文本输入框
---@param hint 提示文本同时也是输入框的标题
---@param prePrint 在打开输入框时候预先显示的内容
---@return 在文本框中输入的内容
M.GetText = function(hint, prePrint)
    return iup.GetText(hint, prePrint)
end

---显示一个输入框,用以接收用户的输入数据
---
---hint 参数是一个字符串,且需要以换行符"\n"结尾,在提示语句后换行符之前使用 %s 调出一个单行输入框, 使用 %w 调出一个多行输入框
---
---使用 %l|(contail)|(contain)|... 来生成一个待选的下拉列表, 此时返回值 con 为选项的标号(特别地,序号是从 0 开始的)
---
---使用 %i 参数来生成一个整数数字候选框, 同时拥有"+-"的箭头用以改变数字大小
---@param title 标题
---@param par2 官方案例多为nil 具体含义不明
---@param hint 提示字符串与标识符
---@param par4 当使用l参数生成待选列表时指定默认选项... 从 0 开始
---@param par4 当使用i参数时指定默认显示的数字
---@return res返回输入状态 con主体内容
M.GetParam = function(title, par2, hint, par4)
    --par2 = par2 or nil
    return iup.GetParam(title, par2, hint, par4)
end

return M