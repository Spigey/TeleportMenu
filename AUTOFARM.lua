function press()
    local finish = game.Workspace.RebirthButtons.Medieval.ProximityPrompt
    fireproximityprompt(finish)
end
local tp = {
    ["Stage 60"] = {-11126, 2064, -337},
    ["End"] = {-11126, 2064, -367},
}
function Teleport(position)
    local character = game:GetService("Players").LocalPlayer.Character
    local teleportCFrame = CFrame.new(Vector3.new(tp[position][1], tp[position][2], tp[position][3]))
    character:WaitForChild("HumanoidRootPart").CFrame = teleportCFrame
end
local Orion = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local TP = Orion:MakeWindow({Name = "Teleports", HidePremium = false, SaveConfig = true, ConfigFolder = "ScripHub1", IntroEnabled = false})

local tab = TP:MakeTab({
    Name = "Main",
    Icon = " ",
    PremiumOnly = false
})
local enabled = false
tab:AddButton({
    Name = "Start Script",
    Callback = function()
        enabled = true
    end
})
tab:AddButton({
    Name = "Stop Script",
    Callback = function()
        enabled = false
    end
})
while wait(0.3) do
    if enabled then
        Teleport("Stage 60")
        wait(0.5)
        Teleport("End")
        wait(0.3)
        press()
    end
end