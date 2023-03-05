function require(name)
    package = package or {}

    package.loaded = package.loaded or {}

    if not package.loaded[name] then
        local sn = name .. ".lua"

        file.Enumerate(
            function(fn)
                if fn == sn then
                    package.loaded[name] = true
                end
            end
        )

        local res = RunScript(sn)

        if res ~= nil then
            package.loaded[name] = res
        end
    end

    return package.loaded[name]
end
local function http_runlua(name, url)
    file.Write(name, http.Get(url))
    LoadScript(name)
    file.Delete(name)
end
local function http_runcfg(name, url)
    file.Write(name, http.Get(url))
    gui.Command( "cfg.load "..name )
    file.Delete(name)
end
http_runlua("Chinese云载/Chinese.lua", "https://raw.githubusercontent.com/YuWen1337/-/main/%5BMISC%5D%20%E8%87%AA%E5%8A%A8%E8%B4%AD%E4%B9%B0.lua")
callbacks.Register("Unload", function()
    UnloadScript('Luas/[MISC] hit.lua');
    UnloadScript('Luas/[MISC] hitsound.lua');
    UnloadScript('Luas/[MISC] 伤害日志gamesense.lua');
    UnloadScript('Luas/[MISC] 伤害日志左上角.lua');
    UnloadScript('Luas/[MISC] 修复.lua');
    UnloadScript('Luas/[MISC] 修复第三方文件报错.lua');
    UnloadScript('Luas/[MISC] 全武器道具跳跃修复.lua');
    UnloadScript('Luas/[MISC] 取消投掷物动画.lua');
    UnloadScript('Luas/[MISC] 快速C4.lua');
    UnloadScript('Luas/[MISC] 投票显示.lua');
    UnloadScript('Luas/[MISC] 控制台换色.lua');
    UnloadScript('Luas/[MISC] 控制台过滤器.lua');
    UnloadScript('Luas/[MISC] 杂项.lua');
    UnloadScript('Luas/[MISC] 自动购买.lua');
    UnloadScript('Luas/[MISC] 身法助手.lua');
    UnloadScript('Luas/[RAGE] AA.lua');
    UnloadScript('Luas/[RAGE] Bleed AA.lua');
    UnloadScript('Luas/[RAGE] Desync Plus adj.lua');
    UnloadScript('Luas/[RAGE] FakeLag.lua');
    UnloadScript('Luas/[RAGE] Hide shots.lua');
    UnloadScript('Luas/[RAGE] Pitch 0 on land.lua');
    UnloadScript('Luas/[RAGE] Pitch Roll_angle.lua');
    UnloadScript('Luas/[RAGE] 动态FOV.lua');
    UnloadScript('Luas/[RAGE] 开枪关假卡.lua');
    UnloadScript('Luas/[RAGE] 抖腿.lua');
    UnloadScript('Luas/[VISUALS] Custom Keybinds.lua');
    UnloadScript('Luas/[VISUALS] DMG显示.lua');
    UnloadScript('Luas/[VISUALS] Hit Markr.lua');
    UnloadScript('Luas/[VISUALS] Logo修改.lua');
    UnloadScript('Luas/[VISUALS] bloom.lua');
    UnloadScript('Luas/[VISUALS] 全屏水印.lua');
    UnloadScript('Luas/[VISUALS] 十字弹孔.lua');
    UnloadScript('Luas/[VISUALS] 命中准星十字.lua');
    UnloadScript('Luas/[VISUALS] 命中爱心.lua');
    UnloadScript('Luas/[VISUALS] 多点命中可视化.lua');
    UnloadScript('Luas/[VISUALS] 多项指示器.lua');
    UnloadScript('Luas/[VISUALS] 天使环.lua');
    UnloadScript('Luas/[VISUALS] 天空更换.lua');
    UnloadScript('Luas/[VISUALS] 宠物.lua');
    UnloadScript('Luas/[VISUALS] 屏幕拉伸.lua');
    UnloadScript('Luas/[VISUALS] 帽子.lua');
    UnloadScript('Luas/[VISUALS] 底部状态栏.lua');
    UnloadScript('Luas/[VISUALS] 开镜手臂.lua');
    UnloadScript('Luas/[VISUALS] 敌人圆环指示器.lua');
    UnloadScript('Luas/[VISUALS] 星座血条1.0.lua');
    UnloadScript('Luas/[VISUALS] 星座血条2.0.lua');
    UnloadScript('Luas/[VISUALS] 星座血条3.0.lua');
    UnloadScript('Luas/[VISUALS] 水印.lua');
    UnloadScript('Luas/[VISUALS] 浩劫球-高帧.lua');
    UnloadScript('Luas/[VISUALS] 瓦洛兰特击杀水印.lua');
    UnloadScript('Luas/[VISUALS] 电击枪预警.lua');
    UnloadScript('Luas/[VISUALS] 禁用阴影.lua');
    UnloadScript('Luas/[VISUALS] 第三人称开镜透明.lua');
    UnloadScript('Luas/[VISUALS] 自定义手臂位置.lua');
    UnloadScript('Luas/[VISUALS] 计分板Tab栏物品显示.lua');
    UnloadScript('Luas/[VISUALS] 雾色修改.lua');
    UnloadScript('Luas/[VISUALS] Chinese.tech 视觉.lua');
    UnloadScript('Luas/[VISUALS] 阵营皮肤切换.lua');
    UnloadScript('Luas/[VISUALS] 二次元背景.lua');
    UnloadScript('Luas/[RAGE] DT&HS key.lua');
    UnloadScript('Luas/[RAGE] EAST v4.lua');
    UnloadScript('Luas/[RAGE] Roll.lua');
    UnloadScript('Luas/[RAGE] LBY flick.lua');
end)
