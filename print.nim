import macros

macro print(body: untyped): untyped =
  result = newStmtList()
  for line in body:
    result.add(quote do: echo `line`)

var a = "qq"

print:
  "hi"
  "kk"
  a