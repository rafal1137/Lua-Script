modname = "ReName"
version = "0.5.0"

function et_InitGame( levelTime, randomSeed, restart )
     et.RegisterModname( modname .. " " .. version )
end

function playerName( clientNum )
   local name = et.Info_ValueForKey( et.trap_GetUserinfo( clientNum ), "name" )
   if name == "" then
   return "*unknown*"
   end
   return name
end

function et_ClientConnect( clientNum, firstTime, isBot )
	if ( clientNum == nil ) then
	return nil
	end
	local name = playerName( clientNum )
	if ( name == "ETPlayer" ) or ( name == "*unknown*" ) then
	et.trap_SendConsoleCommand( et.EXEC_APPEND, "!rename " .. clientNum .. " ^1NQPlayer \n " )
	end
end