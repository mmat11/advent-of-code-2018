import strutils

iterator couples[A](xs: seq[A]): auto =
    for i in 0 ..< xs.len:
      for j in (i + 1) ..< xs.len:
        yield (xs[i], xs[j])

func charDiff(a, b: string): int =
    var c = 0
    for i in 0 ..< a.len:
        if a[i] != b[i]: inc c
    return c

for a, b in couples(readFile("inputs/2").splitLines()):
    if editDistance(a, b) == 1 and charDiff(a, b) == 1:
        for i in 0 ..< a.len:
            if a[i] == b[i]: stdout.write a[i]
        stdout.write "\n"
        break
