row = 1
function TimerClick()
    Padle1 =  (math.floor(NamedControl.GetValue("p1")))
    if row > 36 then
        row = 0
    end

    for i = 1,21 do 
        if Padle1 == i then
            row = (row + 1)
            NamedControl.SetPosition("m" .. i .. "." .. row, 1)
            NamedControl.SetPosition("m" .. i .. "." .. (row - 1), 0)
        else
            NamedControl.SetPosition("m" .. i .. "." .. row, 0)
        end
    end
end

MyTimer = Timer.New()
MyTimer.EventHandler = TimerClick
MyTimer:Start(.1)