hook.Add('PlayerSpawn', 'SetPoints', function (ply)

	ply:LoadCredits()

end)

hook.Add('PlayerDisconnected', 'SaveCredits', function (ply)

	ply:SaveCredits()

end)

hook.Add("ShowSpare1", "GiveCreds", function (ply)

	ply:AddCredits(math.random(1,50))

end)