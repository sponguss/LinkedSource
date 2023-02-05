local gameinfo=game.ReplicatedStorage.GameInfo
local playing
while true do
	repeat task.wait() until gameinfo.InRound.Value==true
	playing=script.Parent.InRound:GetChildren()[math.random(1,#script.Parent.InRound:GetChildren())]
	playing:Play()
	script.Parent.Lobby:Stop()
	repeat task.wait() until gameinfo.InRound.Value==false
	playing:Stop()
	script.Parent.Lobby:Play()
end
