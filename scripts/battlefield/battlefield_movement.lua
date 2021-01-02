local battlefieldMovement = MoveEvent()
function battlefieldMovement.onStepIn(creature, item, position, fromPosition)
	if not Battlefield_x2:onJoin(creature) then
		creature:teleportTo(fromPosition)
		creature:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end
battlefieldMovement:type("stepin")
battlefieldMovement:aid(4500)
battlefieldMovement:register()
