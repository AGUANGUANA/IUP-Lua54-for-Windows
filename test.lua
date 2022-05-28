--print(package.path,"\n",package.cpath)
local iup = require("myIupLua")

--iup.Message("Title","contain")
--pre = iup.Alarm("IupAlarm Example", "File not saved! Save it now?" ,"Yes" ,"No" ,"Cancel",))
--f,err = iup.GetFile("*.exe")
text = iup.GetText("Name?","aaa")