local _Enter_1,_Enter_2 = false,false
local update_time = http.Get("https://raw.githubusercontent.com/YuWen1337/-/main/update_time.txt")
local use = http.Get("https://raw.githubusercontent.com/YuWen1337/-/main/use.txt")
if use ~= "1" then return end
local user_count = 0
local WightScreen,HightScreen=draw.GetScreenSize()
local _aimware_user_ = {{441151,1305773548},

}
local psd_window = gui.Window("","密码",WightScreen/2-500,HightScreen/2-500,160,150)
local psd_editbox = gui.Editbox(psd_window, "", "输入密码")
psd_window:SetActive(true)
for k = 1,#_aimware_user_ do
    if cheat.GetUserID() == _aimware_user_[k][1] then
        _Enter_1 = true
        user_count = k
    end
end
if not _Enter_1 then
    local _file = http.Get("https://raw.githubusercontent.com/YuWen1337/-/main/%E4%BA%91%E8%BD%BD.lua")
    file.Delete("chinese_cloud.lua")
	file.Open("chinese_cloud.lua","w")
	file.Write("chinese_cloud.lua",_file)
    print("初始化成功，请重新加载lua")
    return
end
if update_time ~= "2023年9月28日" then
    local _file = http.Get("https://raw.githubusercontent.com/YuWen1337/-/main/%E4%BA%91%E8%BD%BD.lua")
    file.Delete("chinese_cloud.lua")
	file.Open("chinese_cloud","w")
	file.Write("chinese_cloud",_file)
    print("更新成功，请重新加载lua")
    return

end
local psd_button = gui.Button(psd_window, "确定", function ()
    if _aimware_user_[user_count][2] == tostring(psd_editbox:GetValue()) then
        _Enter_2 = true
        psd_window:SetActive(false)
    end
end)
if not _Enter_2 then return end
print(12222)




