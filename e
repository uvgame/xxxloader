local Library = loadstring(game:HttpGet("https://pastebin.com/raw/GdN5iRbt"))() 
local Window = Library.CreateLib("Lyrical is daddy UI", "DarkTheme") 
local Tab1 = Window:NewTab("Autofarm")
local Tab1Section = Tab1:NewSection("Main")

Tab1Section:NewToggle("Farm 1 - Left", "Farm the left side", function(t)
getgenv().FLO = t
while getgenv().FLO and wait(.3) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(72.9486312866211, -280.16778564453125, -1349.539794921875)
end
end)

Tab1Section:NewToggle("Farm 2 - Right", "Farm the right side", function(t)
getgenv().FLR = t
while getgenv().FLR and wait(.3) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(79.45880126953125, -280.16778564453125, -1349.486083984375)
end     
end)

Tab1Section:NewToggle("Auto Kill", "Kills everyone on the map", function(t)
getgenv().autokill = t
while getgenv().autokill and wait() do
equipgun()
killall()
wait(0.01)
end
end)

Tab1Section:NewButton("Anti AFK", "Never get kicked for being AFK", function()
game.StarterGui:SetCore("SendNotification",{Title = "Notification",Text = "Anti-AFK started."})
for a,b in pairs(getconnections(game.Players.LocalPlayer.Idled))do b:Disable()end
end)

