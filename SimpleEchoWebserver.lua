local http = require("http")

local WEBSERVER_PORT = 1337
local WEBSERVER_HOST = "127.0.0.1"

local function onRequestReceived(request, response)

    print("A new HTTP request was received")

    local responseBody = "Hello world"
    response:setHeader("Content-Type", "text/plain")
    response:setHeader("Content-Length", #responseBody)
    response:finish(responseBody)

    print("Sending response: " .. responseBody)
end

local echoServer = http.createServer(onRequestReceived)
echoServer:listen(WEBSERVER_PORT, WEBSERVER_HOST)

print("The Echo Server is now listening for new connections at http://127.0.0.1:1337/")