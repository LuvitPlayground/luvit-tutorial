local uv = require("uv")

local TEXT_FILE_PATH = "HelloWorld.txt"

local file

local function onFileClosed()
    print("Invoking onFileClosed callback")

    print("The file is now CLOSED")
end

local function onFileContentsRead(error, fileContents)
    print("Invoking onFileContentsRead callback")

    print("File contents: ")
    print(fileContents)

    uv.fs_close(file, onFileClosed)
    print("The asynchronous CLOSE operation is now queued")
end

local function onFileOpened(error, fileHandle)
    print("Invoking onFileOpened callback")

    print("The file is now OPEN")
    file = fileHandle
 
    local lengthInBytes = string.len("Hello from HelloWorld.txt!")
    local firstByteToRead = 0
    uv.fs_read(file, lengthInBytes, firstByteToRead, onFileContentsRead)

    print("The asynchronous READ operation is now queued")
end

local MODE_READ_WRITE_EXECUTE = 438 -- 0666 as octets
uv.fs_open(TEXT_FILE_PATH, "r", MODE_READ_WRITE_EXECUTE, onFileOpened)
print("The asynchronous OPEN operation is now queued")

print("The script has been executed (callbacks are still pending)")