--Gilti-Gearfried the Magical Steel Knight
local s,id=GetID()
function s.initial_effect(c)
	--fusion material
	c:EnableReviveLimit()
	aux.AddFusionProcMix(c,true,true,423705,51828629)
end
