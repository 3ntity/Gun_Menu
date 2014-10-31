include('libs/functions.lua')
include('theme.lua')

include('credits/cl_credit.lua')
include('credits/sh_credit.lua')
/*
pnl.Paint = function(s,w,h)
   surface.SetDrawColor(0,0,0) -- Outline color
   surface.DrawRect(w,h,0,0)
   surface.SetDrawColor(255,255,255) -- Main color
   surface.DrawRect(w+1,h+1,h-2,-2)
end
	
*/

net.Receive("NetDeath", function(len, pl)

 if pl:IsValid() and pl:IsPlayer() then
 	
 	AddNewMedal("Medal Unlocked", "gun_menu/combatribbon.png", 250, 84, "gun_menu/ribboneffect.wav")
 	
 end


end)




