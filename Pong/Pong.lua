function TimerClick()

    Padle1 =  (math.floor(NamedControl.GetValue("p1")))

    for i = 1,21 do 
        if Padle1 == i then
            NamedControl.SetPosition("m" .. i .. ".1", 1)
        else NamedControl.SetPosition("m" .. i .. ".1", 0)
        end
    end

end

MyTimer = Timer.New()
MyTimer.EventHandler = TimerClick
MyTimer:Start(.1)