---@class ItemSlot
local _

--- 绑定单位
---@return Unit
function _.bindUnit() end

--- 存贮数据
---@param modify? Item[]|nil
---@return Item[]
function _.storage(modify) end

--- 空位数量
---@return number
function _.empty() end

--- 推进一个物品
---@param whichItem ItemTpl|Item
---@param index number|nil 对应的物品栏位置[如1-6]
---@return nil
function _.push(whichItem, index) end

--- 移除一个物品
---@param index number|nil 对应的物品栏位置[如1-6]
---@return nil
function _.remove(index) end

--- 丢弃一个物品到X,Y
---@param index number|nil 对应的物品栏位置[如1-6]
---@param x number
---@param y number
---@return nil
function _.drop(index, x, y) end

--- 丢弃所有物品到X,Y
---@param x number
---@param y number
---@return nil
function _.dropAll(x, y) end