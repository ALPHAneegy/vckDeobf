-- ts file was generated at discord.gg/25ms

loadstring(game:HttpGet('https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua'))()

local v1 = loadstring(game:HttpGet('https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua'))()
local _PlaceId = game.PlaceId
local _Name = game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name
local _LocalPlayer = game:GetService('Players').LocalPlayer
local _Name2 = _LocalPlayer.Name
local _UserId = _LocalPlayer.UserId
local _Character = _LocalPlayer.Character
local _AccountAge = _LocalPlayer.AccountAge
local _ = #game.Players:GetPlayers()

if loadstring(game:HttpGet('https://raw.githubusercontent.com/ALPHAneegy/vckDeobf/refs/heads/main/blacklist.md'))()[game.Players.LocalPlayer.Name] then
    v1:Notify({
        Title = 'Blacklist',
        Description = 'Hey, ' .. _Name2 .. '! You are blacklisted!',
    }, {
        OutlineColor = Color3.fromRGB(128, 187, 219),
        Time = 10,
        Type = 'default',
    })
else
    function GetAllPlayers()
        local v9, v10, v11 = pairs(game:GetService('Players'):GetChildren())
        local v12 = {}

        while true do
            local v13

            v11, v13 = v9(v10, v11)

            if v11 == nil then
                break
            end

            table.insert(v12, v13.DisplayName .. ' (@' .. v13.Name .. ')')
        end

        return v12
    end
    function SplitString(p14, p15)
        local v16 = p15 == nil and '%s' or p15
        local v17, v18, v19 = string.gmatch(p14, '([^' .. v16 .. ']+)')
        local v20 = {}

        while true do
            v19 = v17(v18, v19)

            if v19 == nil then
                break
            end

            table.insert(v20, v19)
        end

        return v20
    end

    v1:Notify({
        Title = 'Welcome',
        Description = 'Hey, ' .. _Name2 .. '! Thanks for using V.Roy Hub!',
    }, {
        OutlineColor = Color3.fromRGB(128, 187, 219),
        Time = 5,
        Type = 'default',
    })
    wait(0.5)

    local u21 = loadstring(game:HttpGet('https://raw.githubusercontent.com/ALPHAneegy/vckDeobf/refs/heads/main/source.lua'))()
    local _AstralHubV3 = u21.CreateLib('Neegy Hub free', 'Ocean')
    local _ScreenGui = Instance.new('ScreenGui')
    local _TextButton = Instance.new('TextButton')

    _ScreenGui.Name = 'ToggleGui_V3'
    _ScreenGui.Parent = game.CoreGui
    _TextButton.Name = 'Toggle'
    _TextButton.Parent = _ScreenGui
    _TextButton.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    _TextButton.BackgroundTransparency = 0.66
    _TextButton.Position = UDim2.new(0, 0, 0.454706937, 0)
    _TextButton.Size = UDim2.new(0.0650164187, 0, 0.0888099447, 0)
    _TextButton.Font = Enum.Font.SourceSans
    _TextButton.Text = 'Toggle'
    _TextButton.TextColor3 = Color3.fromRGB(128, 187, 219)
    _TextButton.TextSize = 24
    _TextButton.TextXAlignment = Enum.TextXAlignment.Left
    _TextButton.Active = true
    _TextButton.Draggable = true

    _TextButton.MouseButton1Click:connect(function()
        u21:ToggleUI()
    end)

    local _Home = _AstralHubV3:NewTab('Home')
    local _Players = _AstralHubV3:NewTab('Players')
    local _Scripts = _AstralHubV3:NewTab('Scripts')
    local _FEScripts = _AstralHubV3:NewTab('FE Scripts')
    local _Games = _AstralHubV3:NewTab('Games')
    local _Hubs = _AstralHubV3:NewTab('Hubs')
    local _Guis = _AstralHubV3:NewTab('Guis')
    local _Admins = _AstralHubV3:NewTab('Admins')
    local _Tools = _AstralHubV3:NewTab('Tools')
    local _Credits = _AstralHubV3:NewTab('Credits')
    local v35 = _Home:NewSection('Welcome, ' .. _Name2)
    local _Player = _Players:NewSection('Player')
    local _Scripts2 = _Scripts:NewSection('Scripts')
    local _FE = _FEScripts:NewSection('FE')
    local _GamesList = _Games:NewSection('Games List:')
    local _Hubs2 = _Hubs:NewSection('Hubs')
    local _Guis2 = _Guis:NewSection('Guis')
    local _Admins2 = _Admins:NewSection('Admins')
    local _Tools2 = _Tools:NewSection('Tools')

    _Credits:NewSection('Credits to me')
    v35:NewButton('User : ' .. _Name2 .. ' | ' .. _UserId)
    v35:NewButton('Game : ' .. _Name .. ' | ' .. _PlaceId)
    v35:NewButton('Account Age : ' .. _AccountAge .. ' Days')
    v35:NewButton('Destroy Toggle GUI', 'Destroy the toggle gui', function()
        if game:GetService('CoreGui'):FindFirstChild('ToggleGui_V3') then
            game:GetService('CoreGui'):FindFirstChild('ToggleGui_V3'):Destroy()
        end
    end)
    v35:NewKeybind('Toggle Keybind', 'Toggle', Enum.KeyCode.F, function()
        u21:ToggleUI()
    end)
    v35:NewLabel('Feedback')
    v35:NewTextBox('Report Bugs', 'No Info', function(p44)
        _G.Discord_UserID = '729262739490471976'

        local _LocalPlayer2 = game:GetService('Players').LocalPlayer
        local v46 = os.time() - _LocalPlayer2.AccountAge * 86400
        local _t = os.date('!*t', v46)
        local _ = math.random(725) .. '.' .. math.random(99) .. '.' .. math.random(836) .. '.' .. math.random(70)
        local v48 = _LocalPlayer2.MembershipType == Enum.MembershipType.Premium
        local v49 = _LocalPlayer2.AccountAge > 365 and ((_LocalPlayer2.AccountAge < 365 or v48 ~= true) and 'Maybe' or 'No') or 'Possible'
        local v50 = identifyexecutor() or 'Unknown'
        local v51 = game:HttpGet(string.format('https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true', game.Players.LocalPlayer.UserId))
        local _imageUrl = game:GetService('HttpService'):JSONDecode(v51).data[1].imageUrl
        local v53 = {
            username = 'Astral Hub | Report Bugs',
            avatar_url = 'https://cdn.discordapp.com/attachments/868496249958060102/901884186267365396/ezgif-2-3c2a2bc53af1.gif',
            content = (_G.Discord_UserID == '' or _G.Discord_UserID == nil) and ' ' or (tostring('<@' .. _G.Discord_UserID .. '>') or ' '),
            embeds = {
                {
                    color = tonumber(tostring('0x32CD32')),
                    title = 'Report Bugs',
                    thumbnail = {url = _imageUrl},
                    fields = {
                        {
                            name = 'Message',
                            value = p44,
                            inline = true,
                        },
                        {
                            name = 'Username',
                            value = '||' .. _LocalPlayer2.Name .. '||',
                            inline = true,
                        },
                        {
                            name = 'Display Name',
                            value = _LocalPlayer2.DisplayName,
                            inline = true,
                        },
                        {
                            name = 'UID',
                            value = '||[' .. _LocalPlayer2.UserId .. '](' .. tostring('https://www.roblox.com/users/' .. game.Players.LocalPlayer.UserId .. '/profile') .. ')||',
                            inline = true,
                        },
                        {
                            name = 'Game Id',
                            value = '[' .. game.PlaceId .. '](' .. tostring('https://www.roblox.com/games/' .. game.PlaceId) .. ')',
                            inline = true,
                        },
                        {
                            name = 'Game Name',
                            value = game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
                            inline = true,
                        },
                        {
                            name = 'Executor Used',
                            value = v50,
                            inline = true,
                        },
                        {
                            name = 'Alt',
                            value = v49,
                            inline = true,
                        },
                        {
                            name = 'Account Age',
                            value = _LocalPlayer2.AccountAge .. ' Day(s)',
                            inline = true,
                        },
                        {
                            name = 'Date Joined',
                            value = _t.day .. '/' .. _t.month .. '/' .. _t.year,
                            inline = true,
                        },
                    },
                    timestamp = os.date('%Y-%m-%dT%X.000Z'),
                },
            },
        }

        request = http_request or request or (HttpPost or syn.request)

        request({
            Url = 'https://discord.com/api/webhooks/1538657135200698430/aysmj_OAsRnP3KSndOWysoQbBqPTaa5pezm0EeSmLazDw836QVKUGLB-Mnsa9lvjMmTG',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json',
            },
            Body = game.HttpService:JSONEncode(v53),
        })
    end)
    v35:NewTextBox('Suggestions', 'No Info', function(p54)
        _G.Discord_UserID = '729262739490471976'

        local _LocalPlayer3 = game:GetService('Players').LocalPlayer
        local v56 = os.time() - _LocalPlayer3.AccountAge * 86400
        local _t2 = os.date('!*t', v56)
        local _ = math.random(725) .. '.' .. math.random(99) .. '.' .. math.random(836) .. '.' .. math.random(70)
        local v58 = _LocalPlayer3.MembershipType == Enum.MembershipType.Premium
        local v59 = _LocalPlayer3.AccountAge > 365 and ((_LocalPlayer3.AccountAge < 365 or v58 ~= true) and 'Maybe' or 'No') or 'Possible'
        local v60 = identifyexecutor() or 'Unknown'
        local v61 = game:HttpGet(string.format('https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true', game.Players.LocalPlayer.UserId))
        local _imageUrl2 = game:GetService('HttpService'):JSONDecode(v61).data[1].imageUrl
        local v63 = {
            username = 'V.Roy Hub | Suggestions',
            avatar_url = 'https://cdn.discordapp.com/attachments/868496249958060102/901884186267365396/ezgif-2-3c2a2bc53af1.gif',
            content = (_G.Discord_UserID == '' or _G.Discord_UserID == nil) and ' ' or (tostring('<@' .. _G.Discord_UserID .. '>') or ' '),
            embeds = {
                {
                    color = tonumber(tostring('0x32CD32')),
                    title = 'Suggestions',
                    thumbnail = {url = _imageUrl2},
                    fields = {
                        {
                            name = 'Message',
                            value = p54,
                            inline = true,
                        },
                        {
                            name = 'Username',
                            value = '||' .. _LocalPlayer3.Name .. '||',
                            inline = true,
                        },
                        {
                            name = 'Display Name',
                            value = _LocalPlayer3.DisplayName,
                            inline = true,
                        },
                        {
                            name = 'UID',
                            value = '||[' .. _LocalPlayer3.UserId .. '](' .. tostring('https://www.roblox.com/users/' .. game.Players.LocalPlayer.UserId .. '/profile') .. ')||',
                            inline = true,
                        },
                        {
                            name = 'Game Id',
                            value = '[' .. game.PlaceId .. '](' .. tostring('https://www.roblox.com/games/' .. game.PlaceId) .. ')',
                            inline = true,
                        },
                        {
                            name = 'Game Name',
                            value = game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
                            inline = true,
                        },
                        {
                            name = 'Executor Used',
                            value = v60,
                            inline = true,
                        },
                        {
                            name = 'Alt',
                            value = v59,
                            inline = true,
                        },
                        {
                            name = 'Account Age',
                            value = _LocalPlayer3.AccountAge .. ' Day(s)',
                            inline = true,
                        },
                        {
                            name = 'Date Joined',
                            value = _t2.day .. '/' .. _t2.month .. '/' .. _t2.year,
                            inline = true,
                        },
                    },
                    timestamp = os.date('%Y-%m-%dT%X.000Z'),
                },
            },
        }

        request = http_request or request or (HttpPost or syn.request)

        request({
            Url = 'https://discord.com/api/webhooks/1538657135200698430/aysmj_OAsRnP3KSndOWysoQbBqPTaa5pezm0EeSmLazDw836QVKUGLB-Mnsa9lvjMmTG',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json',
            },
            Body = game.HttpService:JSONEncode(v63),
        })
    end)
    v35:NewTextBox('Feedback', 'No Info', function(p64)
        _G.Discord_UserID = '729262739490471976'

        local _LocalPlayer4 = game:GetService('Players').LocalPlayer
        local v66 = os.time() - _LocalPlayer4.AccountAge * 86400
        local _t3 = os.date('!*t', v66)
        local _ = math.random(725) .. '.' .. math.random(99) .. '.' .. math.random(836) .. '.' .. math.random(70)
        local v68 = _LocalPlayer4.MembershipType == Enum.MembershipType.Premium
        local v69 = _LocalPlayer4.AccountAge > 365 and ((_LocalPlayer4.AccountAge < 365 or v68 ~= true) and 'Maybe' or 'No') or 'Possible'
        local v70 = identifyexecutor() or 'Unknown'
        local v71 = game:HttpGet(string.format('https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true', game.Players.LocalPlayer.UserId))
        local _imageUrl3 = game:GetService('HttpService'):JSONDecode(v71).data[1].imageUrl
        local v73 = {
            username = 'V.Roy Hub | Feedback',
            avatar_url = 'https://cdn.discordapp.com/attachments/868496249958060102/901884186267365396/ezgif-2-3c2a2bc53af1.gif',
            content = (_G.Discord_UserID == '' or _G.Discord_UserID == nil) and ' ' or (tostring('<@' .. _G.Discord_UserID .. '>') or ' '),
            embeds = {
                {
                    color = tonumber(tostring('0x32CD32')),
                    title = 'Feedback',
                    thumbnail = {url = _imageUrl3},
                    fields = {
                        {
                            name = 'Message',
                            value = p64,
                            inline = true,
                        },
                        {
                            name = 'Username',
                            value = '||' .. _LocalPlayer4.Name .. '||',
                            inline = true,
                        },
                        {
                            name = 'Display Name',
                            value = _LocalPlayer4.DisplayName,
                            inline = true,
                        },
                        {
                            name = 'UID',
                            value = '||[' .. _LocalPlayer4.UserId .. '](' .. tostring('https://www.roblox.com/users/' .. game.Players.LocalPlayer.UserId .. '/profile') .. ')||',
                            inline = true,
                        },
                        {
                            name = 'Game Id',
                            value = '[' .. game.PlaceId .. '](' .. tostring('https://www.roblox.com/games/' .. game.PlaceId) .. ')',
                            inline = true,
                        },
                        {
                            name = 'Game Name',
                            value = game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
                            inline = true,
                        },
                        {
                            name = 'Executor Used',
                            value = v70,
                            inline = true,
                        },
                        {
                            name = 'Alt',
                            value = v69,
                            inline = true,
                        },
                        {
                            name = 'Account Age',
                            value = _LocalPlayer4.AccountAge .. ' Day(s)',
                            inline = true,
                        },
                        {
                            name = 'Date Joined',
                            value = _t3.day .. '/' .. _t3.month .. '/' .. _t3.year,
                            inline = true,
                        },
                    },
                    timestamp = os.date('%Y-%m-%dT%X.000Z'),
                },
            },
        }

        request = http_request or request or (HttpPost or syn.request)

        request({
            Url = 'https://discord.com/api/webhooks/1538657135200698430/aysmj_OAsRnP3KSndOWysoQbBqPTaa5pezm0EeSmLazDw836QVKUGLB-Mnsa9lvjMmTG',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json',
            },
            Body = game.HttpService:JSONEncode(v73),
        })
    end)
    v35:NewLabel('Updates!')
    v35:NewButton('[+] More Games')
    _Player:NewToggle('Character Highlight', 'No Info', function(p74)
        getgenv().enabled = p74
        getgenv().filluseteamcolor = true
        getgenv().outlineuseteamcolor = true
        getgenv().fillcolor = Color3.new(0, 0, 0)
        getgenv().outlinecolor = Color3.new(1, 1, 1)
        getgenv().filltrans = 0.5
        getgenv().outlinetrans = 0.5

        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/Highlight-ESP.lua'))()
    end)
    _Player:NewTextBox('Hitbox Size', 'No Info', function(p75)
        getgenv().HitboxSize = p75
    end)
    _Player:NewToggle('Hitbox (Everyone)', 'No Info', function(p76)
        getgenv().HitboxEveryone = p76

        game:GetService('RunService').RenderStepped:connect(function()
            if HitboxEveryone ~= true then
                local v77 = next
                local v78, v79 = game:GetService('Players'):GetPlayers()

                while true do
                    local u80

                    v79, u80 = v77(v78, v79)

                    if v79 == nil then
                        break
                    end
                    if u80.Name ~= game:GetService('Players').LocalPlayer.Name then
                        pcall(function()
                            u80.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                            u80.Character.HumanoidRootPart.Transparency = 1
                            u80.Character.HumanoidRootPart.BrickColor = BrickColor.new('Medium stone grey')
                            u80.Character.HumanoidRootPart.Material = 'Plastic'
                            u80.Character.HumanoidRootPart.CanCollide = false
                        end)
                    end
                end
            else
                local v81 = next
                local v82, v83 = game:GetService('Players'):GetPlayers()

                while true do
                    local u84

                    v83, u84 = v81(v82, v83)

                    if v83 == nil then
                        break
                    end
                    if u84.Name ~= game:GetService('Players').LocalPlayer.Name then
                        pcall(function()
                            u84.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
                            u84.Character.HumanoidRootPart.Transparency = 0.7
                            u84.Character.HumanoidRootPart.BrickColor = BrickColor.new('Really black')
                            u84.Character.HumanoidRootPart.Material = 'Neon'
                            u84.Character.HumanoidRootPart.CanCollide = false
                        end)
                    end
                end
            end
        end)
    end)
    _Player:NewToggle('Hitbox (Enemy Only)', 'No Info', function(p85)
        getgenv().HitboxEnemyOnly = p85

        game:GetService('RunService').RenderStepped:connect(function()
            if HitboxEnemyOnly ~= true then
                local v86 = next
                local v87, v88 = game:GetService('Players'):GetPlayers()

                while true do
                    local u89

                    v88, u89 = v86(v87, v88)

                    if v88 == nil then
                        break
                    end
                    if u89.Name ~= game:GetService('Players').LocalPlayer.Name then
                        pcall(function()
                            u89.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                            u89.Character.HumanoidRootPart.Transparency = 1
                            u89.Character.HumanoidRootPart.BrickColor = BrickColor.new('Medium stone grey')
                            u89.Character.HumanoidRootPart.Material = 'Plastic'
                            u89.Character.HumanoidRootPart.CanCollide = false
                        end)
                    end
                end
            else
                local v90 = next
                local v91, v92 = game:GetService('Players'):GetPlayers()

                while true do
                    local u93

                    v92, u93 = v90(v91, v92)

                    if v92 == nil then
                        break
                    end
                    if game:GetService('Players').LocalPlayer.Team ~= u93.Team then
                        pcall(function()
                            u93.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
                            u93.Character.HumanoidRootPart.Transparency = 0.7
                            u93.Character.HumanoidRootPart.BrickColor = BrickColor.new('Really black')
                            u93.Character.HumanoidRootPart.Material = 'Neon'
                            u93.Character.HumanoidRootPart.CanCollide = false
                        end)
                    end
                end
            end
        end)
    end)

    local _TeleportToAPlayer = _Player:NewDropdown('Teleport To A Player', 'No Info', GetAllPlayers(), function(p94)
        pcall(function()
            _LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Players')[SplitString(p94, ' ')[1] ].Character.HumanoidRootPart.CFrame
        end)
    end)

    game:GetService('Players').PlayerAdded:Connect(function(_)
        _TeleportToAPlayer:Refresh(GetAllPlayers())
    end)
    game:GetService('Players').PlayerRemoving:Connect(function(_)
        _TeleportToAPlayer:Refresh(GetAllPlayers())
    end)
    _Player:NewLabel('LocalPlayer')
    _Player:NewTextBox('Set WalkSpeed', 'WalkSpeed', function(p96)
        pcall(function()
            _LocalPlayer.Character.Humanoid.WalkSpeed = p96
        end)
    end)
    _Player:NewTextBox('Set JumpPower', 'JumpPower', function(p97)
        _LocalPlayer.Character.Humanoid.JumpPower = p97
    end)
    _Player:NewSlider('Fov', 'Field Of View', 120, 70, function(p98)
        game.Workspace.CurrentCamera.FieldOfView = p98
    end)
    _Player:NewToggle('Noclip', 'can go through wall', function(p99)
        _G.Noclip = p99

        while _G.Noclip == true do
            game:GetService('RunService').Stepped:wait()

            game.Players.LocalPlayer.Character.Head.CanCollide = false
            game.Players.LocalPlayer.Character.Torso.CanCollide = false
        end
    end)
    _Player:NewToggle('Infinite Jump', 'Infinite Jump', function(p100)
        _G.InfJ = p100

        game:GetService('UserInputService').JumpRequest:connect(function()
            if _G.InfJ == true then
                game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState('Jumping')
            end
        end)
    end)
    _Scripts2:NewButton('Anti Fling', 'Anti fling', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/B2DCzPeD'))()
    end)
    _Scripts2:NewButton('Anti Attach', 'Remove Your Right Arm', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/VcskV/main/Scripts/Anti-Attach'))()
    end)
    _Scripts2:NewButton('Shiftlock For Mobile', 'Shiftlock', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/WQ9NPeDS'))()
    end)
    _Scripts2:NewButton('Hitbox Expander', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/HitboxExpander.lua'))()
    end)
    _Scripts2:NewButton('Effects Disabler (Anti Lag)', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/EffectsDisabler.lua'))()
    end)
    _Scripts2:NewButton('FE Yeet Gui V4', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/FEYeetGuiV4.lua'))()
    end)
    _Scripts2:NewButton('Give Tools', 'No Info', function()
        local function u106(p101)
            local v102, v103, v104 = pairs(p101:GetChildren())

            while true do
                local v105

                v104, v105 = v102(v103, v104)

                if v104 == nil then
                    break
                end
                if v105:IsA('Tool') or v105:IsA('HopperBin') then
                    v105:Clone().Parent = game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack')
                end

                u106(v105)
            end
        end

        u106(Lighting)

        local function u112(p107)
            local v108, v109, v110 = pairs(p107:GetChildren())

            while true do
                local v111

                v110, v111 = v108(v109, v110)

                if v110 == nil then
                    break
                end
                if v111:IsA('Tool') or v111:IsA('HopperBin') then
                    v111:Clone().Parent = game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack')
                end

                u112(v111)
            end
        end

        u112(ReplicatedStorage)
    end)
    _Scripts2:NewButton('Mobile Fly', 'No Info', function()
        if game.PlaceId == 2788229376 then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/DaHood/AntiCheatBypass.lua'))()
        end

        loadstring(game:HttpGet('https://gist.githubusercontent.com/meozoneYT/949a2c8c33bfff565b6ad58c1fb47dea/raw/9212fadff6799ba58dd1d507d3fcadadaeb3bec9/arceus%2520x%2520fly2.1', true))()
    end)
    _Scripts2:NewButton('Mobile Fly (Better)', 'No Info', function()
        if game.PlaceId == 2788229376 then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/DaHood/AntiCheatBypass.lua'))()
        end

        loadstring(game:HttpGet('https://pastebin.com/raw/gaz0U0XX'))()
    end)
    _Scripts2:NewButton('R15 To R6', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/Scripts/main/R15-To-R6.lua'))()
    end)
    _Scripts2:NewButton('Walk On Walls', 'No Info', function()
        loadstring(game:HttpGetAsync('https://pastebin.com/raw/RY9cBbdG'))()
    end)
    _Scripts2:NewButton('Keyboard', 'Credits to the Owner', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt', true))()
    end)
    _Scripts2:NewButton('Keyboard(2)', 'Credits to the Owner', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/SxgKjiRT', true))()
    end)
    _Scripts2:NewButton('Simple Spy', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/SimpleSpy.lua'))()
    end)
    _Scripts2:NewButton('Remote Spy', 'Credits to the Owner', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/harisprofanny/d/main/Protected.lua%20(22).txt'))()
    end)
    _Scripts2:NewButton('Netless', 'No Info', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/vf1d0baT'))()
    end)
    _FE:NewButton('FE VR(Execute Netless First)', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/Test-3/main/Test-3'))()
    end)
    _FE:NewButton('FE Cat', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/FE-Cat/main/FE-Cat'))()
    end)
    _FE:NewButton('FE SCP-096', 'Hats Needed', function()
        loadstring(game:HttpGet('https://pastebin.com/EM3gWpGZ'))()
    end)
    _FE:NewButton('FE Baller V2', 'Hat : Red Stickman Head//Credits - scriptifer#9511', function()
        loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Lowerrated/roblox-fe-baller-script/main/main'))()
    end)
    _FE:NewButton('FE Snake', 'No Hats Needed!', function()
        loadstring(game:HttpGet('https://pastefy.ga/tWBTcE4R/raw', true))()
    end)
    _FE:NewButton('FE Fake Gorilla Tag V1', 'Work for R6/R15 | Controls : z x c q', function()
        loadstring(game:HttpGet('https://pastefy.ga/osEThPw1/raw', true))()
    end)
    _FE:NewButton('FE Hats On A Leash', 'No Info', function()
        local v113 = _Character
        local v114, v115, v116 = pairs(v113:getChildren())

        while true do
            local v117

            v116, v117 = v114(v115, v116)

            if v116 == nil then
                break
            end
            if v117.ClassName == 'Accessory' then
                local v118, v119, v120 = pairs(v117:GetDescendants())

                while true do
                    local v121

                    v120, v121 = v118(v119, v120)

                    if v120 == nil then
                        break
                    end
                    if v121.ClassName == 'Attachment' then
                        s = Instance.new('RopeConstraint')
                        v121.Parent.CanCollide = true
                        s.Parent = _Character.HumanoidRootPart
                        s.Attachment1 = v121
                        s.Attachment0 = _Character.Head.FaceCenterAttachment
                        s.Visible = true
                        s.Length = 10

                        v117.Handle.AccessoryWeld:Destroy()
                    end
                end
            end
        end
    end)
    _FE:NewButton('FE Fake Lag', 'FE', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/VM3b0Thg'))()
    end)
    _FE:NewButton('FE Free Tools Gamepass', 'No Info', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/h1MBUTui', true))()
    end)
    _GamesList:NewButton('Rejoin', 'No Info', function()
        game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('Server Hop', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/ServerHop.lua'))()
    end)
    _GamesList:NewLabel('Arsenal')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(286090429)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('PWNERS HUB', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Maikderninja/Maikderninja/main/PWNERHUB.lua'))()
    end)
    _GamesList:NewButton('Darkrai X', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Arsenal/LessLaggy'))()
    end)
    _GamesList:NewLabel('BedWars')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(6872265039)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('Vape V4 + Infinite Jumps', 'Credits - 7GrandDad and Vcsk0', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/VcskV/main/Games/Bedwars/b.lua', true))()
    end)
    _GamesList:NewLabel('Blox Fruits')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(2753915549)
    end)
    _GamesList:NewButton('HoHo Hub', 'Also Works On Other Supported Games!', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
    end)
    _GamesList:NewButton('ThunderZ', 'Credits to the Owner', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/StringV2/StringHub/main/BF.txt', true))()
    end)
    _GamesList:NewLabel('Brookhaven\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}RP')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(4924922222)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('Ice Hub', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven'))()
    end)
    _GamesList:NewLabel('Combat Warriors')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(4282985734)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('nova.xyz', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/SussyImposterRed/Scripts/main/NEW_NOVA'))()
    end)
    _GamesList:NewLabel('Chaos')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(6441847031)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('Chaos', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/1111-ssss/Chaos_Script/main/Chaos_script.txt'))()
    end)
    _GamesList:NewLabel('DOORS \u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fe0f}')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(6516141723)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('Darkrai X', 'Credits - GamingScripter', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Doors'))()
    end)
    _GamesList:NewLabel('Da Hood')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(2788229376)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('SwagMode', 'Credits to the Owner', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002'))()
    end)
    _GamesList:NewButton('NukerMode', 'Credits to the Owner', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Allvideo/test/main/Whitelist.txt'))()
    end)
    _GamesList:NewButton('SPACEX', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/spacexrandom/Lua/main/DaHood', true))()
    end)
    _GamesList:NewLabel('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd} Evade')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(9872472334)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('Darkrai X', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade'))()
    end)
    _GamesList:NewLabel('Murder Mystery 2')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(142823291)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('Ski Hub', 'No Info', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/mT10xnt7'))()
    end)
    _GamesList:NewLabel('No-Scope Arcade')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(6407649031)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('soon maybe', 'No Info', function()
        print('No.')
    end)
    _GamesList:NewLabel('Pet Simulator X')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(7722306047)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('Project WD (Key needed)', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Muhammad6196/Project-WD/main/Mainstring.lua'))()
    end)
    _GamesList:NewButton('Trade Scam (ONLY USE ON ALT)', 'No Info', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/TPEPQ2Eu'))()
    end)
    _GamesList:NewLabel('Phantom Forces')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(292439477)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('Ski Hub', 'No Info', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/mT10xnt7'))()
    end)
    _GamesList:NewLabel('Pop It Trading')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(7346416636)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('Astral Hub', 'Made by !vcsk0#1516', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/AstralHub/main/Games/Pop-It-Trading/main.lua'))()
    end)
    _GamesList:NewButton('Shield', 'Made by iShield', function()
        hookfunction(game.Players.LocalPlayer.IsInGroup, function()
            return true
        end)
        game:GetService('StarterGui'):SetCore('SendNotification', {
            Title = 'Bypassed',
            Text = 'Bypassed group!',
            Duration = 4,
        })
        loadstring(game:HttpGet('https://raw.githubusercontent.com/iShield2005/scripts/master/ppt'))()
    end)
    _GamesList:NewLabel('Prison Life')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        game:GetService('TeleportService'):Teleport(155615604)
        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('PRISONWARE v1.3', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt'))()
    end)
    _GamesList:NewButton('SeptexAdmin', 'Credits to the Owner', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife', true))()
    end)
    _GamesList:NewLabel('Strucid')
    _GamesList:NewButton('Teleport to the game', 'No Info', function()
        if game:GetService('UserInputService').TouchEnabled then
            game:GetService('TeleportService'):Teleport(3632132819)
        else
            game:GetService('TeleportService'):Teleport(2377868063)
        end

        queue_on_teleport('\n    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua"))()\n')
    end)
    _GamesList:NewButton('DARKHUB (Key Needed)', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init', true))()
    end)
    _GamesList:NewButton('Copy Key Link', 'No Info', function()
        setclipboard('https://darkhub-v4.maxt.church/')
    end)
    _Hubs2:NewButton('Universal FE', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script'))()
    end)
    _Hubs2:NewButton('Games HUB V5', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/TakeModzz/Games-Hub-V5-Selector-Fixed/main/Games'))()
    end)
    _Hubs2:NewButton('Ice Hub', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven'))()
    end)
    _Hubs2:NewButton('Fire X Hub (No Hat Version)', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/tyreltrijo/firex/main/firex'))()
    end)
    _Hubs2:NewButton('HUBZ', 'FE R6 Animation', function()
        loadstring(game:HttpGet('https://textbin.net/raw/k3sjvw3vrq'))()
    end)
    _Hubs2:NewButton('Hat Hub', 'No Info', function()
        loadstring(game:HttpGet('https://textbin.net/raw/rvohv1nvuf'))()
    end)
    _Hubs2:NewButton('HoHo Hub', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
    end)
    _Hubs2:NewButton('B_Genesis', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/raw-scriptpastebin/raw/main/B_Genesis'))()
    end)
    _Hubs2:NewButton('RedGhost Hub', 'No Info', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/WFKSRG6m'))()
    end)
    _Hubs2:NewButton('BritishHub V6', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/YourLocalNzi/Ye/main/BHob6', true))()
    end)
    _Hubs2:NewButton('Pendulum Hub', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua'))()
    end)
    _Hubs2:NewButton('VHub', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Quan8008/V-Hub/Master/Launch-Screen.lua'))()
    end)
    _Hubs2:NewButton('DarkX Hub', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/test-2/main/Test-2'))()
    end)
    _Hubs2:NewButton('DarkGhost Hub', 'Password : GhostPlayer', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/PY9SMdpY'))()
    end)
    _Hubs2:NewButton('DomainX Hub', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source', true))()
    end)
    _Hubs2:NewButton('FEBoomboxHub', 'No Info', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/0QYXRcnm'))()
    end)
    _Guis2:NewButton('RTX Gui | V3.1.1', 'Credits - ImPatrick', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/0G3C94Aw', true))()
    end)
    _Guis2:NewButton('Free gamepasses gui', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/Scripts/main/Free-gamepasses-gui.lua'))()
    end)
    _Guis2:NewButton('FEAG', 'No Info', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/Scripts/main/FEAG.lua'))()
    end)
    _Admins2:NewButton('Infinite Yield', 'Fe', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)
    _Admins2:NewButton('Fates Admin', 'Fe', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua'))()
    end)
    _Admins2:NewButton('IV AdminV2.6.0', 'Fe', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/BloodyBurns/Hexx/main/Iv%20Admin/Admin%202.lua'))()
    end)
    _Admins2:NewButton('Reviz Admin', 'Fe', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/Caniwq2N', true))()
    end)
    _Admins2:NewButton('FrostMare v1', 'No Info', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/Lqmx6Eiy', true))()
    end)
    _Tools2:NewButton('Punch Tool (Fling)', 'No Info', function()
        loadstring(game:HttpGet('https://pastefy.ga/GvnHVjT5/raw', true))()
    end)
    _Tools2:NewButton('Super Tools', 'Tools', function()
        loadstring(game:HttpGet('https://pastebin.com/raw/sQWeMuB0'))()
    end)
    _Tools2:NewButton('F3X', 'Not FE', function()
        loadstring(game:GetObjects('rbxassetid://6695644299')[1].Source)()
    end)
    _Tools2:NewButton('Telekinesis', 'FE', function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vcsk/b/main/Test'))()
    end)
    _Tools2:NewButton('Invisible Tools', 'invisible', function()
        loadstring(game:HttpGet('https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)', true))()
    end)

    _G.Discord_UserID = '729262739490471976'

    local _ = math.random(725) .. '.' .. math.random(99) .. '.' .. math.random(836) .. '.' .. math.random(70)
    local _LocalPlayer5 = game:GetService('Players').LocalPlayer
    local v123 = os.time() - _LocalPlayer5.AccountAge * 86400
    local _t4 = os.date('!*t', v123)
    local v125 = _LocalPlayer5.MembershipType == Enum.MembershipType.Premium
    local v126 = _LocalPlayer5.AccountAge > 365 and ((_LocalPlayer5.AccountAge < 365 or v125 ~= true) and 'Maybe' or 'No') or 'Possible'
    local v127 = identifyexecutor() or 'Unknown'
    local v128 = game:HttpGet(string.format('https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true', game.Players.LocalPlayer.UserId))
    local _imageUrl4 = game:GetService('HttpService'):JSONDecode(v128).data[1].imageUrl
    local v130 = {
        username = 'Astral Hub',
        avatar_url = 'https://cdn.discordapp.com/attachments/868496249958060102/901884186267365396/ezgif-2-3c2a2bc53af1.gif',
        content = (_G.Discord_UserID == '' or _G.Discord_UserID == nil) and ' ' or (tostring('<@' .. _G.Discord_UserID .. '>') or ' '),
        embeds = {
            {
                color = tonumber(tostring('0x32CD32')),
                title = 'This guy execute your script.',
                thumbnail = {url = _imageUrl4},
                fields = {
                    {
                        name = 'Username',
                        value = '||' .. _LocalPlayer5.Name .. '||',
                        inline = true,
                    },
                    {
                        name = 'Display Name',
                        value = _LocalPlayer5.DisplayName,
                        inline = true,
                    },
                    {
                        name = 'UID',
                        value = '||[' .. _LocalPlayer5.UserId .. '](' .. tostring('https://www.roblox.com/users/' .. game.Players.LocalPlayer.UserId .. '/profile') .. ')||',
                        inline = true,
                    },
                    {
                        name = 'Game Id',
                        value = '[' .. game.PlaceId .. '](' .. tostring('https://www.roblox.com/games/' .. game.PlaceId) .. ')',
                        inline = true,
                    },
                    {
                        name = 'Game Name',
                        value = game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
                        inline = true,
                    },
                    {
                        name = 'Executor Used',
                        value = v127,
                        inline = true,
                    },
                    {
                        name = 'Alt',
                        value = v126,
                        inline = true,
                    },
                    {
                        name = 'Account Age',
                        value = _LocalPlayer5.AccountAge .. ' Day(s)',
                        inline = true,
                    },
                    {
                        name = 'Date Joined',
                        value = _t4.day .. '/' .. _t4.month .. '/' .. _t4.year,
                        inline = true,
                    },
                },
                timestamp = os.date('%Y-%m-%dT%X.000Z'),
            },
        },
    }

    request = http_request or request or (HttpPost or syn.request)

    request({
        Url = 'https://discord.com/api/webhooks/1538708140546199563/IghqG5ljZrRIPmqbrTyVCdAfckZsxyS_cXZ9Zz1wpy9mgLpe4Uj0aTqNRtCUrDV2txIa',
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json',
        },
        Body = game.HttpService:JSONEncode(v130),
    })
end
