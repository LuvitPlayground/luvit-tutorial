local TEXT_FILE_PATH = "HelloWorld.txt"

local file = io.open(TEXT_FILE_PATH, "r")
print("The file is now OPEN")

local fileContents = file:read("*all")
print("File contents: ")
print(fileContents)

file:close()
print("The file is now CLOSED")