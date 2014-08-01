//
//  Factory.swift
//  Swift Pirate Adventure
//
//  Created by Reinaldo Haynes on 7/31/14.
//  Copyright (c) 2014 Reinaldo Haynes. All rights reserved.
//

import UIKit

class Factory: NSObject {
    
    func tiles()->[AnyObject] {
        
        var tile1 = Tile()
        tile1.story = "Captain, we need a fearless leader such as you to undertake a voyage. You must stop the evil pirate Boss before he steals any more plunder. Would you like a blunted sword to get started?"
        tile1.backgroundImage = UIImage(named: "PirateStart.jpg")
        
        var tile2 = Tile()
        tile2.story = "You have come across an armory. Would you like to upgrade your armor to steel armor?"
        tile2.backgroundImage = UIImage(named: "PirateBlacksmith.jpg")
        
        var tile3 = Tile()
        tile3.story = "A mysterious dock appears on the horizon. Should we stop and ask for directions?"
        tile3.backgroundImage = UIImage(named: "PirateFriendlyDock.jpg")
        
        var column1 = [tile1, tile2, tile3]
        
        var tile4 = Tile()
        tile4.story = "You have found a parrot can be used in your armor slot! Parrots are a great defender and are fiercly loyal to their captain."
        tile4.backgroundImage = UIImage(named: "PirateParrot.jpg")
        
        var tile5 = Tile()
        tile5.story = "You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?"
        tile5.backgroundImage = UIImage(named: "PirateWeapons.jpg")
        
        var tile6 = Tile()
        tile6.story = "You have been captured by pirates and are ordered to walk the plank"
        tile6.backgroundImage = UIImage(named: "PiratePlank.jpg")
        
        var column2 = [tile4, tile5, tile6]
        
        var tile7 = Tile()
        tile7.story = "You sight a pirate battle off the coast"
        tile7.backgroundImage = UIImage(named: "PirateShipBattle.jpg")
        
        var tile8 = Tile()
        tile8.story = "The legend of the deep, the mighty kraken appears"
        tile8.backgroundImage = UIImage(named: "PirateOctopusAttack.jpg")
        
        var tile9 = Tile()
        tile9.story = "You stumble upon a hidden cave of pirate treasurer"
        tile9.backgroundImage = UIImage(named: "PirateTreasure.jpg")
        
        var column3 = [tile7, tile8, tile9]
        
        var tile10 = Tile()
        tile10.story = "A group of pirates attempts to board your ship"
        tile10.backgroundImage = UIImage(named: "PirateAttack.jpg")
        
        var tile11 = Tile()
        tile11.story = "In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?"
        tile11.backgroundImage = UIImage(named: "PirateTreasurer2.jpg")
        
        var tile12 = Tile()
        tile12.story = "Your final faceoff with the fearsome pirate boss"
        tile12.backgroundImage = UIImage(named: "PirateBoss.jpg")
        
        var column4 = [tile10, tile11, tile12]
        
        var tiles = [column1, column2, column3, column4]
        
        return tiles
    }
   
}
