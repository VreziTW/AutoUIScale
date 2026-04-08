local function SetUIScale()
    local width, height = GetPhysicalScreenSize()

    if height <= 1200 then
        UIParent:SetScale(0.71111111111) -- 1080p
    else
        UIParent:SetScale(0.53333333) -- 1440p
    end
end

-- Register the event for player login
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", SetUIScale)
