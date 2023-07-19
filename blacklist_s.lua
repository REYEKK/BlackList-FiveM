blacklist = {
"steam:(HEX)",

}


AddEventHandler('playerConnecting', function(playerName, setKickReason)
local numIds = GetNumPlayerIdentifiers(source)
	for i,blacklisted in ipairs(blacklist) do
		for i = 0, numIds-1 do
			if blacklisted == GetPlayerIdentifier(source,i) then
				setKickReason('You are Blacklisted from joining this Server.')
				print("Connection Refused, Blacklisted!\n")
				CancelEvent()
			end
		end
	end
end)
