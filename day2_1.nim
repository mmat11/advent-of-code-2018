import sequtils, strutils, tables

var two, three: int = 0

for l in lines("inputs/2"):
    let values = toSeq(toCountTable(l).values)

    if 2 in values:
        inc two
    if 3 in values:
        inc three

echo two * three
