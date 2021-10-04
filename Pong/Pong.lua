row = 1
Volly1 = true
function TimerClick()
    Padle1 = (math.floor(NamedControl.GetValue("p1")))
    Padle2 = (math.floor(NamedControl.GetValue("p2")))
    if row >= 37 then
        row = 1
    end

    for i = 1,21 do
        if Volly1 == true then
            if Padle1 == i then
                row = (row + 1)
                NamedControl.SetPosition("m" .. i .. "." .. row, 1)
                NamedControl.SetPosition("m" .. i .. "." .. (row - 1), 0)
            else
                NamedControl.SetPosition("m" .. i .. "." .. row, 0)
            end
        end

        if row == 36 then 
            Volly1 = false
            Volly2 = true
        end

        if Volly2 == true then
            -- print(Padle2)
            -- print(Padle1)
            if Padle2 == i then
                row = (row - 1)
                print(row)
                NamedControl.SetPosition("m" .. i .. "." .. row, 1)
                NamedControl.SetPosition("m" .. i .. "." .. (row + 1), 0)
            else
                NamedControl.SetPosition("m" .. i .. "." .. row, 0)
            end
        end
        
        if row == 1 then 
            Volly1 = true
            Volly2 = false
        end 
    end
end

MyTimer = Timer.New()
MyTimer.EventHandler = TimerClick
MyTimer:Start(.1)