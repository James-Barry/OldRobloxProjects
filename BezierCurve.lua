--[[Bezier curve making tool - made by bigbadbob234. Leftclick to add a point, Rightclick to draw the curve]]

function foo(n,ptlist) -- The recursive form of the Beziér curve... n b/w 0 and 1
if #ptlist == 0 then return print("fail") end --U fail. 
if #ptlist > 2 then 
   local ptlist2 = {}
   for i = 1, #ptlist-1 do
   table.insert(ptlist2,ptlist[i]*(1-n)+ptlist[i+1]*n)
   end
   return foo(n,ptlist2)
else
   return (ptlist[1]*(1-n)+ptlist[2]*n)
end
end

function partBetweenPoints(p1,p2)
   local p = Instance.new("Part")
   p.formFactor = "Custom"
   p.Size = Vector3.new(0.1,0.1,(p1-p2).magnitude)
   p.CFrame = CFrame.new((p1+p2)/2,p2)
   p.Anchored = true
   p.Color = Color3.new(1,1,1)
   return p
end

function BezierCurve(pointList, detail) -- unweighted
mdl = Instance.new("Model",workspace)
dif = 1/detail
pp = pointList[1]
for i = 1, detail do
   plc = foo(dif*i,pointList)
   partBetweenPoints(pp,plc).Parent = mdl
   pp = plc   
end
return mdl
end

--click to add a point, rightclick to draw the curve
myPoints = {}

hb = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
hb.Name = "Bezier"
hb.Selected: connect(function(mouse)

   mouse.Button1Down:connect(function()
   table.insert(myPoints,mouse.hit.p)
   local p = Instance.new("Part", workspace)
   p.formFactor = "Custom"
   p.Size = Vector3.new(0.2,0.2,.2)
   p.CFrame = mouse.hit
   p.Anchored = true
   p.Color = Color3.new(0,1,0)
   end)

   mouse.Button2Down:connect(function()
   BezierCurve(myPoints,20)
   wait(1)
   myPoints = {}
   end)

end)

