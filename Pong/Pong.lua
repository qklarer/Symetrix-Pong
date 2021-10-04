function TimerClick()


    if math.floor(math.floor(NamedControl.GetValue("p1"))) == 10 then
        NamedControl.SetPosition("m10.1", 1)
    elseif math.floor(math.floor(NamedControl.GetValue("p1"))) ~= 10 then
        NamedControl.SetPosition("m10.1", 0)
    end
    print(math.floor(NamedControl.GetValue("p1")))
end

MyTimer = Timer.New()
MyTimer.EventHandler = TimerClick
MyTimer:Start(.1)