local function CheckVersion()
    local resource = GetCurrentResourceName()
    local version = GetResourceMetadata(resource, 'version')
    local repo = "repo_name"
    if version then 
        PerformHttpRequest('https://api.github.com/repos/rsc0/'..repo..'/releases/latest', function(err, text, headers)
            if text then 
                local info = json.decode(text)
                Wait(80)
                if version == info.tag_name then 
                    print("^3[INFO] The ["..resource.."] version is up to date ("..version..")^0")
                else
                    print("^8[INFO] The ["..resource.."] version is NOT up to date! Update files (fxmanifest.lua as well) from Keymaster! (Script Version: "..info.tag_name.." | Server Version: "..version..")^0")
                end
            end
        end)
    else
        print("^8[INFO] No version found in fxmanifest.lua! Update the files from Keymaster for "..resource.."!^0")
    end
end

Citizen.CreateThread(function()
    Citizen.Wait(1000)
    CheckVersion()
end)
