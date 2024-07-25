local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "EASE HUB ", HidePremium = false, IntroText = "Ease Hub", SaveConfig = true, ConfigFolder = "OrionTest"})
 
local TradeScamTab = Window:MakeTab({
    Name = "TRADESCAM",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
 
TradeScamTab:AddToggle({
    Name = "TradeScam",
    Default = false,
    Callback = function(Value)
        print(Value)
    end
})
 
TradeScamTab:AddToggle({
    Name = "FreezeTrade",
    Default = false,
    Callback = function(Value)
        print(Value)
    end
})

OrionLib:Init()
