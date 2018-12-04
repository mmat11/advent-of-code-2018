import strutils

var sum: int = 0

for n in lines("inputs/1"):
    sum += parseInt(n.strip())
echo sum
