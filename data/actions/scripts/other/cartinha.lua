local PRESENT_BLUE = {11636 , 11637 , 11638, 11639 , 11640 , 11641 , 11642 , 11643 , 11644 , 11645 , 11646 , 11647 , 11648 , 11649 , 11650 , 11651 , 11652 , 11653 , 11654, 11655, 11656, 11657, 11658, 11659, 11660, 11661, 11662, 11663, 11664, 11665, 11666, 11667, 11668, 11669, 11670, 11671, 11672, 11673, 11674, 11675, 11676, 11677, 11678, 11679, 11680, 11681, 11682, 11683, 11684, 11685, 11686, 11687, 11688, 11689, 11690, 11691, 11692, 11693, 11694, 11695, 11696, 11697, 11698, 11699, 11700, 11701, 11702, 11703, 11704, 11705, 11706, 11707, 11708, 11709, 11710, 11711, 11712, 11713, 11714, 11715, 11716, 11717, 11718, 11719, 11720, 11721, 11722, 11723, 11724, 11725, 11726, 11727, 11728, 11729, 11730, 11731, 11732, 11733, 11734, 11735, 11736, 11737, 11738, 11739, 11740, 11741, 11742, 11743, 11744, 11745, 11746, 11747, 11748, 11749, 11750, 11751, 11752, 11753, 11754, 11755, 11756, 11757, 11758, 11759, 11760, 11761, 11762, 11763, 11764, 11765, 11766, 11767, 11768, 11769, 11770, 11771, 11772, 11773, 11774, 11775, 11776, 11777, 11778, 11779, 11780, 11781, 11782, 11783, 11784, 11785, 11786}

local PRESENT_RED = {}



function onUse(cid, item, fromPosition, itemEx, toPosition)
	
local count = 1

	if(item.itemid == 11788) then
		local randomChance = math.random(1, #PRESENT_BLUE)

		if(randomChance == 1) then
		
	count = 10
		elseif(randomChance == 2) then
			count = 1

		end
	
	doPlayerAddItem(cid, PRESENT_BLUE[randomChance], count)

	elseif(item.itemid == 0) then
	
	local randomChance = math.random(1, #PRESENT_RED)
	
	if randomChance > 0 and randomChance < 4 then
		
	count = 0
	
	end
	
	doPlayerAddItem(cid, PRESENT_RED[randomChance], count)
	end


	doSendMagicEffect(fromPosition, CONST_ME_GIFT_WRAPS)
	doRemoveItem(item.uid, 1)

	return true

end
