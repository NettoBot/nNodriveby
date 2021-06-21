Config = {}

Citizen.CreateThread(function()
	while true do Wait(0)
		a = GetPlayerPed(-1)
		b = GetVehiclePedIsIn(a, false)
		c = GetEntitySpeed(b)
		if c >= Config.a/3.6 and GetPedInVehicleSeat(b, -1) == a then
			SetPlayerCanDoDriveBy(PlayerId(), false)
		else
			SetPlayerCanDoDriveBy(PlayerId(), true)
		end
	end
end)