local fs = require("fs")

local TEXT_FILE_PATH = "HelloWorld.txt"

local function onFileRead(errorMessage, fileContents)
    print("File contents: ")
    print(fileContents)
end

local fileContents = fs.readFile(TEXT_FILE_PATH, onFileRead)