-----------------------------------
-- Area: Dynamis tavnazia
-- NPC:  Tombstone_Prototype
-----------------------------------


require("scripts/globals/dynamis");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
local mobID = mob:getID();
	if(mobID == 16949292 and mob:isInBattlefieldList() == false)then
		killer:addTimeToDynamis(10);
		mob:addInBattlefieldList();
		--print("addtime 10min");
	end
end;