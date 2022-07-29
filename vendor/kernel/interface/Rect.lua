---@type Rect
local _

--- handle
---@return number
function _.handle() end

--- 坐标是否在区域里
---@param x number
---@param y number
---@return boolean
function _.isInside(x, y) end

--- 坐标是否超出区域边界
---@param x number
---@param y number
---@return boolean
function _.isBorder(x, y) end

--- 区域名称
--- 默认与key相同
---@param modify string|nil
---@return self|string
function _.name(modify) end

--- 形状 | 方 | 圆
---@param modify nil|string | "'square'" | "'round'"
---@return self|string
function _.shape(modify) end

--- 区域左下角X坐标
---@return number
function _.xMin() end

--- 区域左下角Y坐标
---@return number
function _.yMin() end

--- 区域右上角X坐标
---@return number
function _.xMax() end

--- 区域右上角Y坐标
---@return number
function _.yMax() end

--- 中心X
---@param modify number|nil
---@return self|number
function _.x(modify) end

--- 中心Y
---@param modify number|nil
---@return self|number
function _.y(modify) end

--- 宽
---@param modify number|nil
---@return self|number
function _.width(modify) end

--- 高
---@param modify number|nil
---@return self|number
function _.height(modify) end

--- 设置天气
---@param weatherType number
---@param duration number
---@return Weather
function _.weather(weatherType, duration) end