---@class Buff
local _

--- 持续时间
---@return number
function _.duration() end

--- 剩余时间
---@param variety number|string|nil
---@return self|number
---@return number
function _.remain(variety) end

--- 对应对象
---@return Object
function _.obj() end

--- 名词
---@return string
function _.name() end

--- 差异值
---@return number
function _.diff() end

--- 预期执行
---@return nil
function _.purpose() end

--- 执行回滚
---@return nil
function _.rollback() end