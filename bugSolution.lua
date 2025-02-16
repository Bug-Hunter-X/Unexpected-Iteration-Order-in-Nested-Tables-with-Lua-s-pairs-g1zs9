local function foo(t, order)
  order = order or {}
  for k, v in pairs(t) do
    table.insert(order, {k, v})
    if type(v) == "table" then
      foo(v, order)
    end
  end
  return order
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
local orderedPairs = foo(t)
for i, pair in ipairs(orderedPairs) do
  print(pair[1], pair[2])
end