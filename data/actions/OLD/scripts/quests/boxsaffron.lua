function onUse (cid,item,frompos,item2,topos)
pos = {x=1059, y=904, z=7}
pos2 = getPlayerPosition(cid)

        UID_DO_BAU = 1200
        STORAGE_VALUE = 1200
        ID_DO_PREMIO = 2160
        ID_DO_PREMIO2 = 2141

        if getPlayerLevel(cid) >= 30 then
  if item.uid == UID_DO_BAU then
          queststatus = getPlayerStorageValue(cid,STORAGE_VALUE)
          if queststatus == -1 then
          doTeleportThing(cid,pos)
        doPlayerSendTextMessage(cid,22,"http://tibiapoketibia-erondino.weebly.com/") -- Msg que ira aparecer
        doPlayerAddItem(cid,ID_DO_PREMIO,10)
        doPlayerAddItem(cid,ID_DO_PREMIO2,1)
        setPlayerStorageValue(cid,STORAGE_VALUE,1)
		doTeleportThing(cid, pos)
		doSendMagicEffect(pos2, CONST_ME_TELEPORT)
          else
        doPlayerSendTextMessage(cid,22,"Voce ja fez :D")
          end
  end
        else
  doPlayerSendCancel(cid,'Somente levels 30+ conseguem abrir este bau.')
        end
return 1
end