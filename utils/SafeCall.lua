function SafeCall(func, ...)
    local success, result = pcall(func, ...)

    if not success then
        warn("[SafeCall]: Finded Error In Script, wait for fix.")
        return nil
    else
        print("[SafeCall]: Script executed successfully!")
    end

    return result
end
