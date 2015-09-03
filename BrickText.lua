--[[Part Text.
That's what it sez on the tin.
That's what it is in the tin.
You can get different kinds of text by tweaking the args in 
buildText(text, parent, color, material, Size, cframe)
Or you could change the actual function. Or whatever.
You do as you do. I'll sit here doing important nothings.
]]

textToBuild = {"Le Lorem Ipsum","Twas brillig", "I bet you're a wonderful person!","Have a great life.", "How's it going?", "jello world!"}

function Make(Type)
return function(Set)
	local Object = Instance.new(Type)
	for A, B in pairs(Set) do
		ypcall(function () Object[A] = B end)
	end
	return Object
end
end
function Part(Parent, Size, cframe, color, Material, Anchored, CanCollide)
return Make'Part'{Parent = Parent, FormFactor = 3, Size = Size, Anchored = Anchored, CFrame = cframe, TopSurface = 0, BottomSurface = 0, Color = color, Material = Material, CanCollide = CanCollide}
end
function Motor(Parent, Part0, Part1, C0, C1)
return Make'Motor6D'{Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1}
end
function SpecialMesh(Parent, MeshType, Scale, MeshId, TextureId)
return Make'SpecialMesh'{Parent = Parent, MeshType = MeshType, Scale = Scale, MeshId = MeshId, TextureId = TextureId}
end
function Frame(Parent, Size, Position, Color, BorderColor, BorderSizePixel, Transparency)
return Make'Frame'{Parent = Parent, Size = Size, Position = Position, BackgroundColor3 = Color, BorderColor3 = BorderColor, BorderSizePixel = BorderSizePixel, Transparency = Transparency}
end
function TextLabel(Parent, Size, Position, Color, BorderColor, BorderSizePixel, Transparency, TextColor, FontSize, Text)
return Make'TextLabel'{Parent = Parent, Size = Size, Position = Position, BackgroundColor3 = Color, BorderColor3 = BorderColor, BorderSizePixel = BorderSizePixel, Transparency = Transparency, TextColor3 = TextColor, FontSize = FontSize, Text = Text}
end

alphabet = {
{{0,0,0},{.5,1,0},{.5,1,0},{1,0,0},{.25,.5,0},{0.75,.5,0}},
{{0,0,0},{0,1,0},{0,1,0},{.75,.75,0},{.75,.75,0},{0,.5,0},{0,.5,0},{1,.3,0},{1,.3,0},{0,0,0}},
{{1,1,0},{0,.5,0},{0,.5,0},{0,.25,0},{0,.25,0},{1,0,0}},
{{0,1,0},{0,0,0},{0,0,0}, {1,.5,0}, {1,.5,0},{0,1,0}},
{{0,1,0},{0,0,0},{0,0,0},{1,0,0},{0,0.5,0},{0.5,0.5,0},{0,1,0},{1,1,0}}, -- E
{{0,1,0},{0,0,0},{0,0.5,0},{0.5,0.5,0},{0,1,0},{1,1,0}},
{{1,1,0},{0,.5,0},{0,.5,0},{0,.25,0},{0,.25,0},{1,0,0},{1,0,0},{1,0.5,0},{1,0.5,0},{.75,.5,0}},
{{0,0,0},{0,1,0},{1,0,0},{1,1,0},{0,0.5,0},{1,.5,0}},
{{0.5,0,0},{0.5,1,0}},
{{0.5,0,0},{0.5,1,0},{0.5,0,0},{0,0.5,0}}, -- J
{{0.5,0.25,0},{1,0,0},{0,.25,0},{1,1,0},{0,0,0},{0,1,0}},
{{0,0,0},{0,1,0},{0,0,0},{1,0,0}},
{{0,0,0},{0,1,0},{1,0,0},{1,1,0},{0.5,0.5,0},{1,1,0},{0,1,0},{0.5,0.5,0}},
{{0,0,0},{0,1,0},{0,1,0},{1,0,0},{1,0,0},{1,1,0}},
{{0,.5,0},{0.5,1,0},{0.5,1,0},{1,0.5,0},{1,0.5,0}, {0.5,0,0}, {0.5,0,0}, {0,.5,0}},
{{0,0,0},{0,1,0},{0,1,0},{.75,.75,0},{.75,.75,0},{0,.5,0}},
{{0,.5,0},{0.5,1,0},{0.5,1,0},{1,0.5,0},{1,0.5,0}, {0.5,0,0}, {0.5,0,0}, {0,.5,0}, {.5,.25,0}, {1,1,0}},
{{0,0,0},{0,1,0},{0,1,0},{.75,.75,0},{.75,.75,0},{0,.5,0},{.2,.6,0},{1,0,0}},
{{1,0,0},{0,0,0},{0,1,0},{1,0,0},{1,1,0},{0,1,0}}, -- S
{{0.5,0,0},{0.5,1,0},{0,1,0},{1,1,0}},
{{0,0,0},{0,1,0},{0,0,0},{1,0,0},{1,0,0},{1,1,0}},
{{0,1,0},{.5,0,0},{.5,0,0},{1,1,0}},
{{0,0,0},{0,1,0},{1,0,0},{1,1,0},{0.5,0.5,0},{1,0,0},{0,0,0},{0.5,0.5,0}},
{{0,1,0},{1,0,0},{0,0,0},{1,1,0}},
{{.5,0,0},{.5,.5,0},{0.5,0.5,0},{1,1,0},{0,1,0},{0.5,0.5,0}},
{{1,0,0},{0,0,0},{1,1,0},{0,0,0},{1,1,0},{0,1,0}}, -- Z
{{0,0.2,0},{0.2,0,0},{0,0,0},{0.2,0.2,0}},
{{0.2,0.2,0},{0.4,0,0},{0.2,0,0},{0.4,0.2,0},{.4,.4,0},{.3,1.3,0}},
{{0,0.8,0},{0.2,1,0},{0,1,0},{0.8,0.8,0}},
{{0.2,0.2,0},{0.4,0,0},{0.2,0,0},{0.4,0.2,0}, {0.4,0.3,0}, {0.4,0.7,0}, {0.4,0.7,0}, {0.7,0.6,0}, {0.7,0.6,0}, {0.7,1.2,0}, {0.7,1.2,0}, {0.2,.8,0}}
}
abc = "abcdefghijklmnopqrstuvwxyz.!'?" 
-- 'Cuz doing a clever thing with ASCII would take longer to code. Duh?

function getPointmap(letter)
	a = string.find(abc,letter)
	return alphabet[a]
end

function buildLetter(letter, parent, color, material, Size, cframe, letter2)
	letter2 = letter2 or "i"
	if letter ~= " " then
	local mdl = Instance.new("Model", parent)	
		if string.lower(letter) ~= letter then
		Size = Size + Vector3.new(0,Size.Y/3,0)
		end
	pm = getPointmap(string.lower(letter))
	pm2 = getPointmap(letter2)
	for i = 1, #pm-1, 2 do
	 p1, p2 = Vector3.new(pm[i][1],pm[i][2],pm[i][3])*Size.X, Vector3.new(pm[i+1][1],pm[i+1][2],pm[i+1][3])*Size.X
	 pt = Part(mdl, Vector3.new(Size.Z,Size.Y/6,(p1-p2).magnitude), cframe*CFrame.new((p1+p2)/2,p2), color, material, 1, 1)
	 pt.CFrame = cframe*CFrame.new((p1+p2)/2,p2)
	end
	else
	return mdl
	end
end

function buildText(text, parent, color, material, Size, cframe) -- Size is for each letter.
local mdl = Instance.new("Model",parent)
	for i = 1, string.len(text) do 
	buildLetter(string.sub(text,i,i), mdl, color, material, Size, cframe*CFrame.new(Size.X*i*1.1,0,0))
	end
mdl.Name = "TextThing"
return mdl
end

for i, v in ipairs(textToBuild) do
	buildText(v, workspace, Color3.new(0.2,i/#textToBuild,0.2), "Slate", Vector3.new(30,30,30), CFrame.new(0,i*40,0))
end

