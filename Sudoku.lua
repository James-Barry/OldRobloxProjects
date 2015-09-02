--[[Sudoku Game, this should be in a localscript.]]
--[[BASIC FUNCTIONS BELOW. THESE WILL PROBABLY BE USED OFTEN]]

function frame(par, siz, col, pos, trans, zind)
gui = Instance.new("Frame")
gui.Parent = par
gui.Size = siz
gui.BackgroundColor3 = col
gui.Position = pos
gui.ZIndex = zind
gui.BackgroundTransparency = trans
return gui
end

function imgl(par, siz, col, pos, img, trans, zind)
gui = Instance.new("ImageLabel")
gui.Parent = par
gui.Size = siz
gui.BackgroundColor3 = col
gui.Position = pos
gui.Image = "http://www.roblox.com/asset/?id="..img
gui.ZIndex = zind
gui.BackgroundTransparency = trans
gui.BorderSizePixel = 0
return gui
end

function imgb(par, siz, col, pos, img, trans, zind)
gui = Instance.new("ImageButton")
gui.Parent = par
gui.Size = siz
gui.BackgroundColor3 = col
gui.Position = pos
gui.Image = "http://www.roblox.com/asset/?id="..img
gui.ZIndex = zind
gui.BackgroundTransparency = trans
gui.BorderSizePixel = 0
return gui
end

function textl(par, siz, col, pos, text, fontSize, trans, zind, textcol)
gui = Instance.new("TextLabel")
gui.Parent = par
gui.Size = siz
gui.BackgroundColor3 = col
gui.Position = pos
gui.Text = text
gui.TextColor3 = textcol
gui.ZIndex = zind
gui.FontSize = fontSize
gui.BorderSizePixel = 0
gui.BackgroundTransparency = trans
return gui
end

function textb(par, siz, col, pos, text, fontSize, trans, zind, textcol)
gui = Instance.new("TextButton")
gui.Parent = par
gui.Size = siz
gui.BackgroundColor3 = col
gui.Position = pos
gui.Text = text
gui.TextColor3 = textcol
gui.ZIndex = zind
gui.FontSize = fontSize
gui.BackgroundTransparency = trans
gui.BorderSizePixel = 0
gui.BorderColor3 = Color3.new(0,1,0)
return gui
end

function textbox(par, siz, col, pos, text, fontSize, trans, zind, textcol)
gui = Instance.new("TextBox")
gui.Parent = par
gui.Size = siz
gui.BackgroundColor3 = col
gui.Position = pos
gui.Text = text
gui.TextColor3 = textcol
gui.ZIndex = zind
gui.FontSize = fontSize
gui.BackgroundTransparency = trans
gui.BorderSizePixel = 0
gui.BorderColor3 = Color3.new(0,1,0)
return gui
end

--[[End main functions]]

background = Instance.new("ScreenGui")
background.Parent = game.Players.LocalPlayer.PlayerGui 
background.Name = "SudokuBackground"

frame(background, UDim2.new(1,0,1,0), Color3.new(175/255,75/255,0.1), UDim2.new(0,0,0,0), 0, -5)

sg = Instance.new("ScreenGui")
sg.Parent = game.Players.LocalPlayer.PlayerGui
sg.Name = "SudokuGame"

sudokustart = {
{0,0,0,2,6,0,7,0,1},
{6,8,0,0,7,0,0,9,0},
{1,9,0,0,0,4,5,0,0},
{8,2,0,1,0,0,0,4,0},
{0,0,4,6,0,2,9,0,0},
{0,5,0,0,0,3,0,2,8},
{0,0,9,3,0,0,0,7,4},
{0,4,0,0,5,0,0,3,6},
{7,0,3,0,1,8,0,0,0}
}

sudokustart2 = {
{1,0,0,4,8,9,0,0,6},
{7,3,0,0,0,0,0,4,0},
{0,0,0,0,0,1,2,9,5},
{0,0,7,1,2,0,6,0,0},
{5,0,0,7,0,3,0,0,8},
{0,0,6,0,9,5,7,0,0},
{9,1,4,6,0,0,0,0,0},
{0,2,0,0,0,0,0,3,7},
{8,0,0,5,1,2,0,0,4}
}

sudokustart3 = {
{0,2,0,6,0,8,0,0,0},
{5,8,0,0,0,9,7,0,0},
{0,0,0,0,4,0,0,0,0},
{3,7,0,0,0,0,5,0,0},
{6,0,0,0,0,0,0,0,4},
{0,0,8,0,0,0,0,1,3},
{0,0,0,0,2,0,0,0,0},
{0,0,9,8,0,0,0,3,6},
{0,0,0,3,0,6,0,9,0}
}

sudokustart4 = {
{0,0,0,6,0,0,4,0,0},
{7,0,0,0,0,3,6,0,0},
{0,0,0,0,9,1,0,8,0},
{0,0,0,0,0,0,0,0,0},
{0,5,0,1,8,0,0,0,3},
{0,0,0,3,0,6,0,4,5},
{0,4,0,2,0,0,0,6,0},
{9,0,3,0,0,0,0,0,0},
{0,2,0,0,0,0,1,0,0}
}

sudokustart5 = {
{2,0,0,3,0,0,0,0,0},
{8,0,4,0,6,2,0,0,3},
{0,1,3,8,0,0,2,0,0},
{0,0,0,0,2,0,3,9,0},
{5,0,7,0,0,0,6,2,1},
{0,3,2,0,0,6,0,0,0},
{0,2,0,0,0,9,1,4,0},
{6,0,1,2,5,0,8,0,9},
{0,0,0,3,0,1,0,0,2}
}

sudokustart6 = {
{0,2,0,0,0,0,0,0,0},
{0,0,0,6,0,0,0,0,3},
{0,7,4,0,8,0,0,0,0},
{0,0,0,0,0,3,0,0,2},
{0,8,0,0,4,0,0,1,0},
{6,0,0,5,0,0,0,0,0},
{0,2,0,0,1,0,7,8,0},
{5,0,0,0,0,9,0,0,0},
{0,0,0,0,0,0,0,4,0}
}

boardChoices = {sudokustart, sudokustart2, sudokustart3,sudokustart4, sudokustart5,sudokustart6}
boardDescript = {"Easy", "Easy", "Intermediate", "Difficult", "Difficult", "Uber difficult"}


--Sample sudoku boards above

mySudoku = sudokustart

function chooseBoard(board)

mySudoku = {}

	for i = 1, 9 do
	tbl = {}
		for j = 1, 9 do
		table.insert(tbl, board[i][j])
		end
	table.insert(mySudoku, tbl)
	end
end


function alright(stringy)

yeno = false

	for i = 1, 9 do
	if stringy == tostring(i) then
	yeno = true
	end
	end
	if stringy == "" then
	yeno = true
	end

return yeno
end

eyes = {"\=","\;","\:","8","\:^","X","\;\'"}
mouths = {"D","\)","\(","O","P","3","\/","|","\\","C","U","]","[","o","S"}

function makeBoardGui(board, size, position, zindex, textSiz, acting)
boardFrame = frame(sg, UDim2.new(0,size,0,size), Color3.new(0,0,0), position, 0, zindex-0.5)
boardFrame.Active = acting

guitab = {}
tilesize = UDim2.new(0,size/9,0,size/9)

	for i = 1, 9 do
	tablet = {}
	for j = 1, 9 do
		if board[i][j] == 0 then
			if acting then
			guithing = textbox(boardFrame, tilesize, Color3.new(1,1,1), UDim2.new((i-1)/9,0,(j-1)/9,0), "", textSiz, 0, zindex, Color3.new(0.2,0.2,0.2))
			else
			guithing = textl(boardFrame, tilesize, Color3.new(1,1,1), UDim2.new((i-1)/9,0,(j-1)/9,0), "", textSiz, 0, zindex, Color3.new(0.2,0.2,0.2))
			end
		guithing.Active = acting
		guithing.Font = "Arial"

			if acting then 
			guithing.FocusLost:connect(function()
				if alright(guitab[i][j].Text) then
				guitab[i][j].TextColor3 = Color3.new(0.2,0.2,0.2)
				mySudoku[i][j] = guitab[i][j].Text
				else
				guitab[i][j].TextColor3 = Color3.new(1,0.2,0.2)
				guitab[i][j].Text = eyes[math.random(1,#eyes)]..mouths[math.random(1,#mouths)]

				-- ONLY NUMBERS FROM 1 TO 9 ARE ACCEPTABLE, otherwise you will summon a face.

				end
			end)
			end

		else
		guithing = textl(boardFrame, tilesize, Color3.new(1,1,1), UDim2.new((i-1)/9,0,(j-1)/9,0), board[i][j], textSiz, 0, zindex, Color3.new(0,0,0))
		guithing.Active = acting
		guithing.Font = "ArialBold"
		end

		table.insert(tablet, guithing)
	end
	table.insert(guitab, tablet)
	end
	for i = 1, 8 do
		if i%3 == 0 then
		frame(boardFrame, UDim2.new(0,size/90,1,0), Color3.new(0,0,0), UDim2.new(i/9,0,0,0), 0, zindex+2)
		frame(boardFrame, UDim2.new(1,0,0,size/90), Color3.new(0,0,0), UDim2.new(0,0,i/9,0), 0, zindex+2)
		else
		frame(boardFrame, UDim2.new(0,1,1,0), Color3.new(0,0,0), UDim2.new(i/9,0,0,0), 0, zindex+2).BorderSizePixel = 0
		frame(boardFrame, UDim2.new(1,0,0,1), Color3.new(0,0,0), UDim2.new(0,0,i/9,0), 0, zindex+2).BorderSizePixel = 0
		end
	end
return boardFrame
end

function menu()

sg:ClearAllChildren() --starts a new screen

chooseBoard(boardChoices[1])

clktab = {}

boardtable = {}

for i = 1, #boardChoices do 
clk = imgb(sg, UDim2.new(0,200,0,200), Color3.new(1,0,0), UDim2.new(0,i*205,0.25,0), "made by bigbadbob234", 0, 3)
brd = makeBoardGui(boardChoices[i], 180, UDim2.new(0,10,0,10), 5, "Size12", false)
brd.Parent = clk
descr = textl(clk, UDim2.new(1,-5,0,20), Color3.new(1, 225/255, 175/255), UDim2.new(0,5,1,-5), boardDescript[i], "Size12", 0, 3, Color3.new(0,0,0))
descr.BorderSizePixel = 1
	if i == 1 then
	clk.BackgroundColor3 = Color3.new(0,1,0.25)
	end

	clk.MouseButton1Click:connect(function()
		for k = 1, #clktab do
		clktab[k].BackgroundColor3 = Color3.new(1,0,0)
		end
	clktab[i].BackgroundColor3 = Color3.new(0,1,0.25)
	chooseBoard(boardChoices[i])
	end)

table.insert(clktab,clk)
end


play = textb(sg, UDim2.new(0,150,0.25,0), Color3.new(1,1,1), UDim2.new(0.5,-75,0.75,-50), "Play!", "Size48", 1, 3, Color3.new(1,1,1))
play.TextStrokeColor3 = Color3.new(0,0,0)
play.TextStrokeTransparency = 0          

play.MouseButton1Click:connect(function()
start()
end)
end -- end of menu Fn

function checkForWin(theboard)

trfl = true;

for h = 1, 9 do
for i = 1, 8 do 
	for j = i+1, 9 do 
		if (theboard[h][i] == theboard[h][j]) or (theboard[i][h] == theboard[j][h]) then
		return false
		end
	end
end
end

for q = 0, 2 do 
	for w = 0, 2 do
		for er = 1, 8 do
			for ty = er, 8 do
			if (theboard[q*3+math.floor(er/3)+1][w*3+er%3] == theboard[q*3+math.floor(ty/3)+1][w*3+ty%3+1]) then
				return false
			end
			end
		end
	end
end

return trfl;
end
--[[There may be some faulty maths in the Box-checking loop-soup...]]


function start()

sg:ClearAllChildren() --starts a new screen

makeBoardGui(mySudoku, 540, UDim2.new(0.5,-270,0,50), 2, "Size48", true)	

	won = textb(sg, UDim2.new(0.25,0,0,50), Color3.new(1,1,1), UDim2.new(0,25,0.5,-50), "Check Board", "Size48", 1, 3, Color3.new(1,1,1))
	won.TextStrokeColor3 = Color3.new(0,0,0)
	won.TextStrokeTransparency = 0
	
	won.MouseButton1Down:connect(function()
		if checkForWin(mySudoku) then
		won.Text = "YOU WON!"
		-- Maybe play a song or Throw confetti & rainbows? 
		-- The caps and exclaimation mark should be good enough.
		else
		won.Text = "Not a win"
		wait(2)
		won.Text = "Check Board"
		end
	end)
	
	bckm = textb(sg, UDim2.new(0.25,0,0,50), Color3.new(1,1,1), UDim2.new(0,25,0.5,50), "Back to Menu", "Size48", 1, 3, Color3.new(1,1,1))
	bckm.TextStrokeColor3 = Color3.new(0,0,0)
	bckm.TextStrokeTransparency = 0
	
	bckm.MouseButton1Down:connect(function()
	menu()
	end)
end

menu()

