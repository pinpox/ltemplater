function read_lines(args)
	s = io.read("*a") -- read the complete stdin

	lines = {}

	for line in s:gmatch("([^\n]*)\n?") do
		table.insert(lines, line)
	end

	return lines
end


local t = require("template")

if #arg ~= 1 then
	print("usage:ntprog template")
	os.exit(1)
end

-- Variables
foods = read_lines()


-- Safe environmet to prevent templates
-- from doing things like running arbitary
-- commands with os.execute.

local env = {
    pairs  = pairs,
    ipairs = ipairs,
    type   = type,
    table  = table,
    string = string,
    date   = os.date,
    math   = math,
    adder  = adder,
    count  = count,
    var_a  = var_a,
    var_b  = var_b,
    name   = name,
    foods  = foods
}

print(t.compile_file(arg[1], env))

