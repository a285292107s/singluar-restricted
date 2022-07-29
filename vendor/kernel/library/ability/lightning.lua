---@param lType LIGHTNING_TYPE
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param duration number 持续时间
---@return number|nil
function ability.lightning(lType, x1, y1, z1, x2, y2, z2, duration)
    if (lType == nil) then
        return
    end
    x1 = x1 or 0
    y1 = y1 or 0
    z1 = z1 or 0
    x2 = x2 or 0
    y2 = y2 or 0
    z2 = z2 or 0
    duration = math.max(0.1, duration or 0.2)

    local lt = J.AddLightningEx(lType.value, true, x1, y1, z1, x2, y2, z2)
    J.handleRef(lt)
    if (lType.effect) then
        effect.xyz(lType.effect, x2, y2, z2, 0.25)
    end
    time.setTimeout(duration, function()
        J.DestroyLightning(lt)
        J.handleUnRef(lt)
    end)
    return lt
end
