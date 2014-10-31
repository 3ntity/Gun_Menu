local meta = FindMetaTable('Player')

function meta:GetCredits()
	return self:GetNWInt('credits')
end

function meta:AddCredits(amount)
	self:SetNWInt('credits', self:GetCredits() + amount )
end

function metaRemoveCredits(amount)
	self:SetNWInt('credits', self:GetCredits() -  amount )
end	

function meta:SaveCredits()
	self:SetPData('saved_credits', self:GetCredits() )
end	

function meta:LoadCredits()
	self:SetNWInt('credits', self:GetPData('saved_credits'))
end	