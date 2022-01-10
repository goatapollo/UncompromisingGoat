local function OnSave(inst,data)
if inst.rotation ~= nil then
data.rotation = inst.rotation
end
if inst.scalex ~= nil then
data.scalex = inst.scalex
end
if inst.scalez ~= nil then
data.scalez = inst.scalez
end
if inst.type ~= nil then
inst.type = data.type
end
end

local function OnLoad(inst,data)
if data.rotation ~= nil then
inst.rotation = data.rotation
inst.Transform:SetRotation(inst.rotation)
end
if data.scalex ~= nil and data.scalez ~= nil then
inst.scalex = data.scalex
inst.scalez = data.scalez
inst.Transform:SetScale(inst.scalex,1,inst.scalez)
end
if data.type ~= nil then
inst.type = data.type
inst.AnimState:PlayAnimation(inst.type)
end
end

local function OnPicked(inst)
inst:Remove()
end

local function OnSpring(inst)
inst:Remove()
end

local function fn()
    local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()
	

    inst.AnimState:SetLayer(LAYER_BACKGROUND)
    inst.AnimState:SetSortOrder(3)
	inst.AnimState:SetOrientation(ANIM_ORIENTATION.OnGround)
    inst.AnimState:SetBank("saltpile")
    inst.AnimState:SetBuild("saltpile")

    --inst:AddTag("CLASSIFIED")
	inst:AddTag("snowpileblocker")
	inst:AddTag("NOBLOCK")
	inst.entity:SetPristine()
	
	if not TheWorld.ismastersim then 
		return inst
	end
		
	
	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_SUPERSLOW)

	inst.type = 1

	inst.AnimState:PlayAnimation(inst.type)
	inst.rotation = math.random(-180,180)
	inst.scalex = math.random(0.9,1.1)
	inst.scalez = math.random(0.9,1.1)
	inst.Transform:SetRotation(inst.rotation)
	inst.Transform:SetScale(inst.scalex,1,inst.scalez)
	
	inst.OnSave = OnSave
	inst.OnLoad = OnLoad
	inst:WatchWorldState("isspring", OnSpring)
	inst:WatchWorldState("isautumn", OnSpring) --Include other seasons incase someone is weird and disables spring for reasons unknown?
	inst:WatchWorldState("issummer", OnSpring)
    return inst
end


return Prefab("saltpile", fn)