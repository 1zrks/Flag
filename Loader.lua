-- Try to apply FFlags
local success = pcall(function()
    local data = game:HttpGet("https://raw.githubusercontent.com/1zrks/Flag/refs/heads/main/message.txt")
    local fflags = game:GetService("HttpService"):JSONDecode(data)
    
    for flag, value in pairs(fflags) do
        if setfflag then
            setfflag(flag, value)
        end
    end
    
    print("FFlags attempted")
end)

if not success then
    warn("Failed")
end
