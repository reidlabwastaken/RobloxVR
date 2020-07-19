function TheyPlayer(player, RightHand, LeftHand, Head)
	workspace.RightH.CFrame = (RightHand)
	workspace.LeftH.CFrame = (LeftHand)
end

script.REvent1.OnServerEvent:Connect(TheyPlayer)
