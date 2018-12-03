import strutils

var current: int = 0
var partials: seq[int] = @[0]

let lines = readFile("inputs/1").strip().splitLines()
while true:
    for n in lines:
        current += parseInt(n)
        if current in partials:
            echo current
            quit(0)
        else:
            partials.add(current)
