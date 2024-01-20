---@param this Missile
Class("Missile")
    .construct(
    function(this, options)
        PropChange(this, "modelAlias", "std", options.modelAlias, false)
        PropChange(this, "priority", "std", 0, false)
        PropChange(this, "scale", "std", 1.0, false)
        PropChange(this, "speed", "std", 600, false)
        PropChange(this, "acceleration", "std", 0, false)
        PropChange(this, "height", "std", 0, false)
        PropChange(this, "shake", "std", 0, false)
        PropChange(this, "homing", "std", false, false)
        PropChange(this, "gatlin", "std", 0, false)
        PropChange(this, "scatter", "std", 0, false)
        PropChange(this, "radius", "std", 0, false)
        PropChange(this, "reflex", "std", 0, false)
    end)