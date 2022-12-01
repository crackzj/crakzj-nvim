local Input = {}
Input.change = function()
    cmd = ("inputsource com.apple.keylayout.ABC")
    os.execute(cmd)
end

return Input

