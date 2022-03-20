--[[
    This script is intended to create a Bookmarklet given a JavaScript file. It should output the code in its entirety without line breaks:

    - Remove all line breaks
    - Add the text "javascript: () => { " to the beginning and " }" to the end
]]

local function printSyntaxHelpMessage()
    print("\n\tSyntax: 'lua main.lua <js-file-name>'\n")
end

-- Validate number of arguments
if #arg == 0 then
    printSyntaxHelpMessage()
    os.exit()
elseif #arg >= 2 then
    error("Error: Too many arguments")
    printSyntaxHelpMessage()
    os.exit()
end

local fileName = arg[1]

-- Validate if the file exists and is a JavaScript file
local file = io.open(fileName, "r")
if file==nil then
    error("Error: File \"" .. fileName .. "\" not found")
    os.exit()
end
if fileName:sub(-#".js") ~= ".js" then
    error("Error: Input file must be a JavaScript file (file name ending in \".js\")")
    os.exit()
end

local contents = file:read("a")
file:close()

local bookmarklet = "javascript:( () => { " .. contents:gsub("%\n", "") .. " })()"

local newFileName = fileName:gsub(".js", ".txt")
local newFile = io.open(newFileName, "w")
newFile:write(bookmarklet)
newFile:close()

print("Bookmarklet created in: " .. newFileName)
