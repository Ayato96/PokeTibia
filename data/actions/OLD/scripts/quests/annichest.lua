-- annihilator chests
function onUse(cid, item, fromPosition, itemEx, toPosition)

   	if item.uid == 5006 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Demon Armor.")
   			doPlayerAddItem(cid,2494,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5007 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Sword of Valor.")
   			doPlayerAddItem(cid,2400,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5008 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Stonecutter's Axe.")
   			doPlayerAddItem(cid,2431,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5009 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Thunder Hammer.")
   			doPlayerAddItem(cid,2421,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end