--超合魔獣ラプテノス
local s,id=GetID()
function s.initial_effect(c)
	--fusion material
	c:EnableReviveLimit()
	aux.AddFusionProcMixN(c,true,true,aux.FilterBoolFunctionEx(Card.IsType,TYPE_DUAL),2)
	--duel status
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_FIELD)
	e1:SetRange(LOCATION_MZONE)
	e1:SetTargetRange(LOCATION_MZONE,LOCATION_MZONE)
	e1:SetTarget(aux.TargetBoolFunction(Card.IsType,TYPE_DUAL))
	e1:SetCode(EFFECT_DUAL_STATUS)
	c:RegisterEffect(e1)
end
