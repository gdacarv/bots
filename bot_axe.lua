local fountainLocation = Vector(-5923.0, -5337.0, 384.0);
local fountainRadius = 400.0;

----------------------------------------------------------------------------------------------------

function Think()

	local npcBot = GetBot();

	local angle = math.rad(math.fmod(npcBot:GetFacing()+30, 360));
	local newLocation = Vector(fountainLocation.x+fountainRadius*math.cos(angle), fountainLocation.y+fountainRadius*math.sin(angle), fountainLocation.z);
	npcBot:Action_MoveToLocation(newLocation);
	DebugDrawLine(fountainLocation, newLocation, 255, 0, 0);

end

----------------------------------------------------------------------------------------------------
