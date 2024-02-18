---@type Plugin
local plugin = ...
plugin.name = 'BBC'
plugin.author = 'xX_GakMaster_Xx'
plugin.description = 'gives you a BBC'


plugin.commands["/bbc"] = {
  info = "gives you a BBC",
  canCall = function(ply) return ply.isadmin end,
  call = function(ply, man, args)
    assert(man, "Not spawned in.")
    local itm = items.create(itemTypes[36], man.pos, orientations.s)
    local crotch = man:getRigidBody(00)
    local a = {1, 1, 1}
    local b = {1, 1, 1}
    if itm then
      ItemType:setCanMountTo(man, true)
      RigidBody:bondTo(crotch, a, b)
      end
  end
  }

