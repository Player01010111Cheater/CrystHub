function SafeCall(func, ...)
    local success, result = pcall(func, ...)

    if not success then
        warn("Findef Error In Script, wait for fix.")
        return nil
    end

    return result
end
