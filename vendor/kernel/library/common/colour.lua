---@class colour
colour = colour or {}

--- hex6位颜色
---@type fun(str:string,hex:string):string
colour.hex = function(str, hex)
    if (str == nil or str == '' or hex == nil) then
        return str
    end
    return "|cff" .. hex .. str .. "|r"
end

--- 耀金
---@type fun(str:string):string
colour.gold = function(str)
    return colour.hex(str, "ffcc00")
end

--- 纯白
---@type fun(str:string):string
colour.white = function(str)
    return colour.hex(str, "ffffff")
end

--- 纯黑
---@type fun(str:string):string
colour.black = function(str)
    return colour.hex(str, "000000")
end

--- 浅灰
---@type fun(str:string):string
colour.grey = function(str)
    return colour.hex(str, "c0c0c0")
end

--- 深灰
---@type fun(str:string):string
colour.greyDeep = function(str)
    return colour.hex(str, "969696")
end

--- 亮红
---@type fun(str:string):string
colour.redLight = function(str)
    return colour.hex(str, "ff8080")
end

--- 大红
---@type fun(str:string):string
colour.red = function(str)
    return colour.hex(str, "ff3939")
end

--- 浅绿
---@type fun(str:string):string
colour.greenLight = function(str)
    return colour.hex(str, "ccffcc")
end

--- 深绿
---@type fun(str:string):string
colour.green = function(str)
    return colour.hex(str, "80ff00")
end

--- 浅黄
---@type fun(str:string):string
colour.yellowLight = function(str)
    return colour.hex(str, "ffffcc")
end

--- 亮黄
---@type fun(str:string):string
colour.yellow = function(str)
    return colour.hex(str, "ffff00")
end

--- 浅橙
---@type fun(str:string):string
colour.orangeLight = function(str)
    return colour.hex(str, "ffd88c")
end

--- 橙色
---@type fun(str:string):string
colour.orange = function(str)
    return colour.hex(str, "ffc24b")
end

--- 天空蓝
---@type fun(str:string):string
colour.skyLight = function(str)
    return colour.hex(str, "ccffff")
end

--- 青空蓝
---@type fun(str:string):string
colour.sky = function(str)
    return colour.hex(str, "80ffff")
end

--- 浅海蓝
---@type fun(str:string):string
colour.seaLight = function(str)
    return colour.hex(str, "99ccff")
end

--- 深海蓝
---@type fun(str:string):string
colour.sea = function(str)
    return colour.hex(str, "00ccff")
end

--- 浅紫
---@type fun(str:string):string
colour.purpleLight = function(str)
    return colour.hex(str, "ee82ee")
end

--- 亮紫
---@type fun(str:string):string
colour.purple = function(str)
    return colour.hex(str, "ff59ff")
end

--- 插入组合
--[[
    str 一个字符串，数值%s,%s,%s
    containColor 总体hex颜色，包住字符串两端 string|nil|function
    options {
        {"00ccff", "100"}, -- 按顺序替换
        {"ee82ee", "200"},
        {colour.purple, "300"}, -- 可使用函数进行颜色设定，自定义函数也可以只要返回string类型即可
    }
]]
---@type fun(str:string,containColor:nil|string|function,options:table):string
colour.format = function(str, containColor, options)
    local poses = string.subAllPos(str, '%%s')
    local builder = {}
    if (#poses > 0) then
        local idx = 1
        local cursor = 1
        for _, p in ipairs(poses) do
            if (p[1] > 1) then
                if (type(containColor) == "string") then
                    table.insert(builder, colour.hex(string.sub(str, cursor, p[1] - 1), containColor))
                elseif (type(containColor) == "function") then
                    table.insert(builder, containColor(string.sub(str, cursor, p[1] - 1)))
                else
                    table.insert(builder, string.sub(str, cursor, p[1] - 1))
                end
            end
            if (options ~= nil and options[idx] ~= nil) then
                if (type(options[idx][1]) == "string") then
                    table.insert(builder, colour.hex(tostring(options[idx][2]), options[idx][1]))
                elseif (type(options[idx][1]) == "function") then
                    table.insert(builder, options[idx][1](tostring(options[idx][2])))
                end
            end
            cursor = p[2] + 1
            idx = idx + 1
        end
        if (type(containColor) == "string") then
            table.insert(builder, colour.hex(string.sub(str, cursor), containColor))
        elseif (type(containColor) == "function") then
            table.insert(builder, containColor(string.sub(str, cursor)))
        else
            table.insert(builder, string.sub(str, cursor))
        end
    end
    return string.implode('', builder)
end
