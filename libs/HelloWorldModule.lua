local uv = require("uv")

local HelloWorldModule = {}

function HelloWorldModule:HelloWorld()
    print("Hello world from libs/")

    local SLEEP_TIME_IN_MILLISECONDS = 3000
    uv.sleep(SLEEP_TIME_IN_MILLISECONDS)

    print("Good morning!")
end

return HelloWorldModule