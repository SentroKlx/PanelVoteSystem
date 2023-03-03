//
//  ________  ________          ________   ________  _________        _________  ________  ___  ___  ________  ___  ___     
// |\   ___ \|\   __  \        |\   ___  \|\   __  \|\___   ___\     |\___   ___\\   __  \|\  \|\  \|\   ____\|\  \|\  \    
// \ \  \_|\ \ \  \|\  \       \ \  \\ \  \ \  \|\  \|___ \  \_|     \|___ \  \_\ \  \|\  \ \  \\\  \ \  \___|\ \  \\\  \   
//  \ \  \ \\ \ \  \\\  \       \ \  \\ \  \ \  \\\  \   \ \  \           \ \  \ \ \  \\\  \ \  \\\  \ \  \    \ \   __  \  
//   \ \  \_\\ \ \  \\\  \       \ \  \\ \  \ \  \\\  \   \ \  \           \ \  \ \ \  \\\  \ \  \\\  \ \  \____\ \  \ \  \ 
//    \ \_______\ \_______\       \ \__\\ \__\ \_______\   \ \__\           \ \__\ \ \_______\ \_______\ \_______\ \__\ \__\
//     \|_______|\|_______|        \|__| \|__|\|_______|    \|__|            \|__|  \|_______|\|_______|\|_______|\|__|\|__|
//

SVoteSystem = SVoteSystem or {}
SVoteSystem.Vote = {}

local rootDirectory = "votesystempanel"

local function AddFile( File, directory )
	local prefix = string.lower( string.Left( File, 3 ) )

	if SERVER and prefix == "sv_" then
		include( directory .. File )
		print( "// Load Panel VoteSystem File //" .. File )
	elseif prefix == "sh_" then
		if SERVER then
			AddCSLuaFile( directory .. File )
			print( "// Load Panel VoteSystem File //" .. File )
		end
		include( directory .. File )
		print( "// Load Panel VoteSystem File //" .. File )
	elseif prefix == "cl_" then
		if SERVER then
			AddCSLuaFile( directory .. File )
			print( "// Load Panel VoteSystem File //" .. File )
		elseif CLIENT then
			include( directory .. File )
			print( "// Load Panel VoteSystem File //" .. File )
		end
	end
end

local function IncludeDir( directory )
	directory = directory .. "/"

	local files, directories = file.Find( directory .. "*", "LUA" )

	for _, v in ipairs( files ) do
		if string.EndsWith( v, ".lua" ) then
			AddFile( v, directory )
		end
	end

	for _, v in ipairs( directories ) do
		print( "// Load Panel VoteSystem File //" .. v )
		IncludeDir( directory .. v )
	end
end

IncludeDir( rootDirectory )