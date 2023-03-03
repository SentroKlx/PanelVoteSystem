//
//  ________  ________          ________   ________  _________        _________  ________  ___  ___  ________  ___  ___     
// |\   ___ \|\   __  \        |\   ___  \|\   __  \|\___   ___\     |\___   ___\\   __  \|\  \|\  \|\   ____\|\  \|\  \    
// \ \  \_|\ \ \  \|\  \       \ \  \\ \  \ \  \|\  \|___ \  \_|     \|___ \  \_\ \  \|\  \ \  \\\  \ \  \___|\ \  \\\  \   
//  \ \  \ \\ \ \  \\\  \       \ \  \\ \  \ \  \\\  \   \ \  \           \ \  \ \ \  \\\  \ \  \\\  \ \  \    \ \   __  \  
//   \ \  \_\\ \ \  \\\  \       \ \  \\ \  \ \  \\\  \   \ \  \           \ \  \ \ \  \\\  \ \  \\\  \ \  \____\ \  \ \  \ 
//    \ \_______\ \_______\       \ \__\\ \__\ \_______\   \ \__\           \ \__\ \ \_______\ \_______\ \_______\ \__\ \__\
//     \|_______|\|_______|        \|__| \|__|\|_______|    \|__|            \|__|  \|_______|\|_______|\|_______|\|__|\|__|
//

function voteframe()

local votesystem = vgui.Create("DFrame")
votesystem:SetTitle("")
votesystem:SetSize(200, 200)
votesystem:SetPos(ScrW()-200, ScrH()/2-100)
votesystem:SetDraggable(false)
votesystem:ShowCloseButton(false)
votesystem.Paint = function(s, w, h)
    draw.RoundedBox(5, 0, 0, w, h, SVoteSystem.Vote.Config["Color BackGround Panel"])
    draw.SimpleText("Votez et Recevez", "SVoteSytemeFont3", ScrW()/200, ScrH()/25, Color(255, 255, 255))
    draw.SimpleText(SVoteSystem.Vote.Config["Money"], "SVoteSytemeFont2", ScrW()/30, ScrH()/10, Color(255, 255, 255))
end

local boutton = vgui.Create("DButton", votesystem)
boutton:SetSize(170, 40)
boutton:SetPos(ScrW()/100, ScrH()/6)
boutton:SetFont("SVoteSytemeFont")
boutton:SetTextColor(Color(255, 255, 255))
boutton:SetText("Votez !")
boutton.Paint = function(s, w, h)
    draw.RoundedBox(5, 0, 0, w, h, SVoteSystem.Vote.Config["Color Button"])
end
boutton.DoClick = function()
    RunConsoleCommand("say", SVoteSystem.Vote.Config["Command"])
	end    
end

net.Receive('requete_panel_vote_spawn', function(len, player)
 	voteframe()
end)

surface.CreateFont("SVoteSytemeFont", {
    font = "Circular Std Medium", 
    extended = false,
    size = 20,
    weight = 400,
})

surface.CreateFont("SVoteSytemeFont2", {
    font = "Circular Std Medium", 
    extended = false,
    size = 35,
    weight = 400,
})

surface.CreateFont("SVoteSytemeFont3", {
    font = "Circular Std Medium", 
    extended = false,
    size = 30,
    weight = 400,
})