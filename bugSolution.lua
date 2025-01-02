local function foo(x)
  if x == nil then
    return 0 -- or handle the nil case appropriately
  end
  return x + 1
end

local result = foo(nil)
print(result) -- Output: 0

--Alternative error handling
local function foo_alt(x)
  if x == nil then
    error("x is nil", 2) -- error with level 2 for better debugging
  end
  return x + 1
end

local result2
local function safeCall(func, ...)
  return pcall(func, ...)
 end

local success, result2 = safeCall(foo_alt, nil)

if success then
  print(result2)
else
  print("Error in foo_alt:", result2)
end