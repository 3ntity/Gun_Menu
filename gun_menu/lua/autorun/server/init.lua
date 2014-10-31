include('credits/sh_credit.lua')
include('credits/sv_credit.lua')

AddCSLuaFile('autorun/client/cl_menu.lua')

AddCSLuaFile('theme.lua')

AddCSLuaFile('autorun/client/cl_class.lua')

AddCSLuaFile('libs/functions.lua')

AddCSLuaFile('credits/cl_credit.lua')
AddCSLuaFile('credits/sh_credit.lua')

resource.AddFile( "materials/gun_menu/combatribbon.png" )
resource.AddFile( "sound/gun_menu/ribboneffect.wav" )

util.AddNetworkString("NetDeath") --not very creative ://

hook.Add("PlayerDeath", "NetTheMedal", function(pl)

	net.Start("NetDeath")
	net.Send(pl)

end)
