import tables
import sequtils
import strutils

var
    two: int = 0
    three: int = 0

for l in lines("inputs/2"):
    let occ = toCountTable(l.strip())
    let values = toSeq(occ.values)

    if 2 in values:
        inc two
    if 3 in values:
        inc three

echo two * three
