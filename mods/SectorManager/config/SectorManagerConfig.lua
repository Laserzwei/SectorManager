local config = {}

config.Author = "Laserzwei"
config.ModName = "Sector Manager"
config.version = {
    major=0, minor=1, patch = 0,
    string = function()
        return  config.version.major .. '.' ..
                config.version.minor .. '.' ..
                config.version.patch
    end
}

config.maxSectorPerPlayer = 5   --Default: 5

return config
