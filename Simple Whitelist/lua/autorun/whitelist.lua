AllowedPlayers = {
"STEAM_0:0:40997289",
"STEAM_1:0:40997289",
} 


function Whitelist()
	for k, v in pairs( player.GetAll() ) do
		if table.HasValue(AllowedPlayers, v:SteamID() ) then
			print("You're allowed here")
		else
			v:Kick("Sorry! You're not on the whitelist")
		end
	end
end

hook.Add("PlayerInitialSpawn", "Whitelist", Whitelist)