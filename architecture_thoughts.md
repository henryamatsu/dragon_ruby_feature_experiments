Trying to figure out the player/NPC action flow

maybe everything is event based. PCs, NPCs, fixtures, the world, can all cause events to happen. PCs create events when the player presses inputs, or automatically when the PC meets certain conditions (a PC moves within range of an NPC), the world might cause events to occur based on timers or random chance, NPCs might cause events to happen randomly or in reaction to other events. 

no, not everything should be event based it seems. There should be requests and events. Requests are essentially direct interactions, whereas events are an indirect signal that gets broadcasted out to anyone who happens to be listening. Like, if you go to chop a tree in DST, the player code makes a treeChop request to the tree, that triggers some immediate logic like decrementing the tree's health, but also triggers a "tree was chopped" event that might cascade other events, like a tree guard awakening. For one reason or another, my impulse when I'm faced with this architecture is to be like "well why isn't the health decrementing also event based?", but I think what it is, the event literally doesn't control any sophisticated logic, it's literally just a message, maybe with a simple payload (playerId, or something like that) that lets the eventListener know to trigger some other behavior. There's no sense in a feature signaling itself with an event, because it already knows about the event, you know? And there is an organizational advantage as well in the DIRECT consequence of an action being explicitly written out, where the event maker doesn't really know anything explicit about what potential event listeners are planning to do with it








