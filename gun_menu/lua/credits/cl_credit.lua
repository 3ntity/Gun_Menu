

hook.Add('HUDPaint', 'DrawCredits', function () --Temporarily for showing.

	draw.SimpleText("Current Weapon Credits: "..LocalPlayer():GetCredits(), 'TargetID', 10, 10, Color(255,255,255))

end)

function TimedPoints()

	timer.Create( 'Timed_Points', 60, 0, function ()
		local ply = LocalPlayer()
		notification.AddLegacy( "10 Weapon Credits Have Been Added!", NOTIFY_GENERIC , 5 ) 
		ply:AddCredits(10)

	end ) 

end 

hook.Add( "Initialize", "TimingPoints", TimedPoints )