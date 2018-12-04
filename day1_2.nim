import sequtils, strutils

var
    current: int = 0
    partials: seq[int] = @[0]

let lines = readFile("inputs/1").strip().splitLines().map(parseInt)

while true:
    for n in lines:
        current += n
        if current in partials:
            echo current
            quit(0)
        else:
            partials.add(current)
