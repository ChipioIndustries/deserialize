local t = require(script.Parent.t)

local Deserialize = {}

function Deserialize.Font(fontName)
	assert(t.string(fontName))
	return Enum.Font[fontName]
end

function Deserialize.Color3(array)
	Deserialize._checkArray(array)
	return Color3.fromRGB(unpack(array))
end

function Deserialize.Vector3(array)
	Deserialize._checkArray(array)
	return Vector3.new(unpack(array))
end

function Deserialize._checkArray(array)
	assert(t.array(t.number)(array))
	assert(#array == 3, "expected array with 3 values")
end

return Deserialize