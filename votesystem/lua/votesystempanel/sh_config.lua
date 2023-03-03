//
//  ________  ________  ________   ________ ___  ________  ___  ___  ________  ________  _________  ___  ________  ________      
// |\   ____\|\   __  \|\   ___  \|\  _____\\  \|\   ____\|\  \|\  \|\   __  \|\   __  \|\___   ___\\  \|\   __  \|\   ___  \    
// \ \  \___|\ \  \|\  \ \  \\ \  \ \  \__/\ \  \ \  \___|\ \  \\\  \ \  \|\  \ \  \|\  \|___ \  \_\ \  \ \  \|\  \ \  \\ \  \   
//  \ \  \    \ \  \\\  \ \  \\ \  \ \   __\\ \  \ \  \  __\ \  \\\  \ \   _  _\ \   __  \   \ \  \ \ \  \ \  \\\  \ \  \\ \  \  
//   \ \  \____\ \  \\\  \ \  \\ \  \ \  \_| \ \  \ \  \|\  \ \  \\\  \ \  \\  \\ \  \ \  \   \ \  \ \ \  \ \  \\\  \ \  \\ \  \ 
//    \ \_______\ \_______\ \__\\ \__\ \__\   \ \__\ \_______\ \_______\ \__\\ _\\ \__\ \__\   \ \__\ \ \__\ \_______\ \__\\ \__\
//     \|_______|\|_______|\|__| \|__|\|__|    \|__|\|_______|\|_______|\|__|\|__|\|__|\|__|    \|__|  \|__|\|_______|\|__| \|__|
//

local CFG = {}
SVoteSystem.Vote.Config = CFG

CFG["Money"] = "10.000" // Rester entre 10.000 et 100.000

CFG["Color BackGround Panel"] = Color(35, 35, 35) // Changez la couleur du fond du panel PS besoin d un restart après ce changement

CFG["Color Button"] = Color(50, 50, 50) // Changez la couleur du bouton Votez !

CFG["Command"] = "/vote" // Changez la commande pour votez 