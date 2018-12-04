import strscans, strutils

const max: int = 1000
var 
    area: array[0..max, array[0..max, int]]
    id, off_x, off_y, width, height {.noinit.}: int
    count: int = 0

for l in lines("inputs/3"):
    assert scanf(l, "#$i @ $i,$i: $ix$i", id, off_x, off_y, width, height)
    for w in off_x ..< width + off_x:
        for h in off_y ..< height + off_y: inc area[w][h]

for w in 0 ..< max:
    for h in 0 ..< max:
        if area[w][h] > 1: inc count

echo count
