import strutils

var sum: int = 0

let lines = readFile("inputs/1").strip().splitLines()
for n in lines:
    sum += parseInt(n)
echo sum
