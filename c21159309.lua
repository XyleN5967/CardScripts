--救世竜 セイヴァー・ドラゴン
local s,id=GetID()
function s.initial_effect(c)
	local e2=Effect.CreateEffect(c)
	e2:SetType(EFFECT_TYPE_SINGLE)
	e2:SetCode(EFFECT_CANNOT_BE_SYNCHRO_MATERIAL)
	e2:SetProperty(EFFECT_FLAG_CANNOT_DISABLE+EFFECT_FLAG_UNCOPYABLE)
	e2:SetValue(s.synlimit)
	c:RegisterEffect(e2)
end
function s.synlimit(e,c)
	if not c then return false end
	return not c:IsSetCard(0x3f)
end
