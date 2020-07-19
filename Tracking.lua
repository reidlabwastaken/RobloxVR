wait(4)

local GenPlayer = game.Players.LocalPlayer.Character


workspace.CurrentCamera.CameraType = "Scriptable"
wait()
workspace.CurrentCamera.CFrame = CFrame.new()

local VRService = game:GetService("VRService")
local UIS = game:GetService("UserInputService")

VRService.UserCFrameChanged:Connect(function()
	local LeftHand = VRService:GetUserCFrame(Enum.UserCFrame.LeftHand)
	local RightHand = VRService:GetUserCFrame(Enum.UserCFrame.RightHand)
	local Head = VRService:GetUserCFrame(Enum.UserCFrame.Head)
	workspace.VRScript.REvent1:FireServer(RightHand,LeftHand,Head)
end)
