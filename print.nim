import macros

macro print(body: untyped): untyped =
  template p(stuff) =
    echo stuff
  result = newStmtList()
  for line in body:
    result.add getAst(p(line))

var a = "qq"

print:
  "hi"
  "kk"
  a