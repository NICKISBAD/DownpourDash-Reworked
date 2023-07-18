local plr = game.Players.LocalPlayer.Character.HumanoidRootPart

local function pb(b)
        plr.CFrame = game:GetService("Workspace").Current.CurrentMap.Buttons:FindFirstChild(b).Head.CFrame
end

local function altpb(b)
        plr.CFrame = game:GetService("Workspace").Current.CurrentMap:FindFirstChild(b).Head.CFrame
end

local function win()
    game.Workspace.Current.CurrentMap.ExitRegion.CFrame = plr.CFrame
end

local function altwin()
    game.Workspace.Current:FindFirstChild("ExitRegion").CFrame = plr.CFrame
end

game:GetService("StarterGui"):SetCore("SendNotification",{ 	
    Title = "Note", 	
    Text = "If the features dont work, re-execute the script!",
    Duration = 5
})

local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/InfinitiveUI",true))()


--Lib:CreateWindow(name,DefTab,WinSize,function)
local Win = Lib:CreateWindow("Nick's DP Dash",90,nil,nil)
local Tab,name = Win:CreateTab("DP Dash Gui",function() end)



Tab:CreateButton("Auto win/Press all buttons" ,function()
pb("Button1")
wait(0.3)
pb("Button2")
wait(0.3)
pb("Button3")
wait(0.3)
pb("Button4")
wait(0.3)
pb("Button5")
wait(0.3)
pb("Button6")
wait(0.3)
pb("Button7")
wait(0.3)
pb("Button8")
wait(0.3)
pb("Button9")
wait(0.3)
pb("Button10")
wait(0.3)
pb("Button11")
wait(0.3)
pb("Button12")
wait(0.3)
pb("Button13")
end)

Tab:CreateButton("Alt-Press Buttons (Use if v1 doesnt work)" ,function()
altpb("Button1")
wait(0.3)
altpb("Button2")
wait(0.3)
altpb("Button3")
wait(0.3)
altpb("Button4")
wait(0.3)
altpb("Button5")
wait(0.3)
altpb("Button6")
wait(0.3)
altpb("Button7")
wait(0.3)
altpb("Button8")
wait(0.3)
altpb("Button9")
wait(0.3)
altpb("Button10")
wait(0.3)
altpb("Button11")
wait(0.3)
altpb("Button12")
wait(0.3)
altpb("Button13")
end)

Tab:CreateButton("Exit (all buttons must be pressed" ,function()
win()
end)

Tab:CreateButton("alt-Exit (all buttons must be pressed)" ,function()
altwin()
end)

Tab:CreateButton("Delete water P1" ,function()
    for _,v in pairs(game.Workspace.Current:GetChildren()) do
        if v.Name == "Liquid" and v:IsA("Folder") then
            v:Destroy()
        end
    end
end)

Tab:CreateButton("Delete water P2" ,function()
    for _,v in pairs(game.Workspace.Current.CurrentMap.Liquid:GetChildren()) do
        if v.Name == "State" or "DrainSpeed" then
            v.Value = 0
        end
    end
end)


_G.InfiniteAir = false

Tab:CreateButton("Infinite Air", function()
_G.InfiniteAir = true
if _G.InfiniteAir == true then
 game.Players.LocalPlayer.PlayerInfo.MaxAir.Value = 999999
 game.Players.LocalPlayer.PlayerInfo.Air.Value = 999999
end
end)

Tab:CreateButton("UnInfinite Air", function()
_G.InfiniteAir = false
if _G.InfiniteAir == false then
    game.Players.LocalPlayer.PlayerInfo.MaxAir.Value = 100
    game.Players.LocalPlayer.PlayerInfo.Air.Value = 100
end
end)
