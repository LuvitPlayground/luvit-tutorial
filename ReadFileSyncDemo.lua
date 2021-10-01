local uv = require("uv")

local TEXT_FILE_PATH = "HelloWorld.txt"

local MODE_READ_WRITE_EXECUTE = 438 -- 0666 as octets
local file = uv.fs_open(TEXT_FILE_PATH, "r", MODE_READ_WRITE_EXECUTE)
print("The file is now OPEN")

local lengthInBytes = string.len("Hello from HelloWorld.txt!")
local firstByteToRead = 0
local fileContents = uv.fs_read(file, lengthInBytes, firstByteToRead)
print("File contents: ")
print(fileContents)

uv.fs_close(file)
print("The file is now CLOSED")
