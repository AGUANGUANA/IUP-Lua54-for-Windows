local M = {}

local iup = require("iuplua")

--有关Api文档信息,请参阅 https://www.tecgraf.puc-rio.br/iup/ 下的 Lua Binding条目获取更多信息
--本模块基于上述网站内容编写

---显示一个窗口,拥有标题和内容
---@param title Title
---@param contain Contail
M.Message = function(title,contain)
    iup.Message(title,contain)
end

---显示一个提问框,显示三个按钮
---@return 按下按钮的编号,从1开始
M.Alarm = function(title,question,but1,but2,but3)
    return iup.Alarm(title,question,but1,but2,but3)
end

---显示一个Windows文件打开窗口
---@return filePath 文件的路径
---@return errCode 错误码
M.GetFile = function(fileType)
    return iup.GetFile(fileType)
end

---显示一个文本输入框
---@param hint 提示文本同时也是输入框的标题
---@param prePrint 在打开输入框时候预先显示的内容
---@return 在文本框中输入的内容
M.GetText = function(hint,prePrint)
    return iup.GetText(hint,prePrint)
end

return M