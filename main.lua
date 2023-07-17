local plr = game.Players.LocalPlayer.Character.HumanoidRootPart

local function pb(b)
           game:GetService("Workspace").Current.CurrentMap.Buttons [b].Head.CFrame = plr.CFrame
end

local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/InfinitiveUI",true))()


--Lib:CreateWindow(name,DefTab,WinSize,function)
local Win = Lib:CreateWindow("Nick's DP Dash",30,nil,nil)
local Tab,name = Win:CreateTab("DP Dash Gui",function() end)

Tab:CreateButton("Press all buttons (move in circles" ,function()
pb("Button1")
pb("Button2")
pb("Button3")
pb("Button4")
pb("Button5")
pb("Button6")
pb("Button7")
pb("Button8")
pb("Button9")
pb("Button10")
pb("Button11")
pb("Button12")
pb("Button13")
    
end)

Tab:CreateButton("Exit (all buttons must be pressed" ,function()
game.Workspace.Current.CurrentMap.ExitRegion.CFrame = plr.CFrame

end)

Tab:CreateButton("Delete water (w.i.p)" ,function()
        game:GetService("Workspace").Current.CurrentMap.Liquid:Destroy()
game:GetService("Workspace").Current.CurrentMap:WaitForChild("Water1"):Destroy()
end)
