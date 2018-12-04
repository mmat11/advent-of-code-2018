import sequtils, strscans, strutils


const max: int = 1000
type Claim = tuple[id, off_x, off_y, width, height: int]
var 
    area: array[0..max, array[0..max, int]]
    claims: seq[Claim]
    id, off_x, off_y, width, height, count {.noinit.}: int

for l in lines("inputs/3"):
    assert scanf(l, "#$i @ $i,$i: $ix$i", id, off_x, off_y, width, height)
    claims.add((id, off_x, off_y, width, height))

    for w in off_x ..< width + off_x:
        for h in off_y ..< height + off_y: inc area[w][h]

for c in claims:
    count = 0
    for w in c.off_x ..< c.off_x + c.width:
        for h in c.off_y ..< c.off_y + c.height:
            if area[w][h] == 1:
                inc count
    if count == c.width * c.height:
        echo c.id
        break
