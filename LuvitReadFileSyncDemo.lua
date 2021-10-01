local fs = require("fs")

local TEXT_FILE_PATH = "HelloWorld.txt"

local fileContents = fs.readFileSync(TEXT_FILE_PATH)
print("File contents: ")
print(fileContents)