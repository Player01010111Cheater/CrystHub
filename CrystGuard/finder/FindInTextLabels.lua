return function(gui, gui_names)
    for _, element in pairs(gui:GetDescendants()) do
        if element.ClassName == "TextLabel" then
            for _, name in pairs(gui_names) do
                if string.find(element.Name, name, 1, true) == 1 
                or string.find(element.Text, name, 1, true) == 1 then
                    gui:Destroy()
                end
            end
        end
    end    
end
