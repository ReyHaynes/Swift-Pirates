//
//  TilesFactory.swift
//  Swift Pirate Adventure
//
//  Created by Reinaldo Haynes on 7/31/14.
//  Copyright (c) 2014 Reinaldo Haynes. All rights reserved.
//

import UIKit

class Factory: NSObject {
    
    func tiles()->[AnyObject] {
        
        var tile1 = TileModel()
        tile1.story = "Captain, we need a fearless leader such as you to undertake a voyage. You must stop the evil pirate Boss before he steals any more plunder. Would you like a blunted sword to get started?"
        tile1.backgroundImage = UIImage(named: "PirateStart.jpg")
        var bluntedSword = WeaponModel()
        bluntedSword.name = "Blunted Sword"
        bluntedSword.damage = 12
        tile1.weapon = bluntedSword
        tile1.actionButtonName = "Take Sword"
        
        var tile2 = TileModel()
        tile2.story = "You have come across an armory. Would you like to upgrade your armor to steel armor?"
        tile2.backgroundImage = UIImage(named: "PirateBlacksmith.jpg")
        var steelArmor = ArmorModel()
        steelArmor.name = "Steel Armor"
        steelArmor.health = 8
        tile2.armor = steelArmor
        tile2.actionButtonName = "Take Armor"
        
        var tile3 = TileModel()
        tile3.story = "A mysterious dock appears on the horizon. Should we stop and ask for directions?"
        tile3.backgroundImage = UIImage(named: "PirateFriendlyDock.jpg")
        tile3.healthEffect = 12
        tile3.actionButtonName = "Stop at the Dock"
        
        var column1 = [tile1, tile2, tile3]
        
        var tile4 = TileModel()
        tile4.story = "You have found a parrot can be used in your armor slot! Parrots are a great defender and are fiercly loyal to their captain."
        tile4.backgroundImage = UIImage(named: "PirateParrot.jpg")
        var parrotArmor = ArmorModel()
        parrotArmor.name = "Parrot"
        parrotArmor.health = 20
        tile4.armor = parrotArmor
        tile4.actionButtonName = "Adopt Parrot"
        
        var tile5 = TileModel()
        tile5.story = "You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?"
        tile5.backgroundImage = UIImage(named: "PirateWeapons.jpg")
        var pistolWeapon = WeaponModel()
        pistolWeapon.name = "Pistol"
        pistolWeapon.damage = 16
        tile5.weapon = pistolWeapon
        tile5.actionButtonName = "Use Pistol"
        
        var tile6 = TileModel()
        tile6.story = "You have been captured by pirates and are ordered to walk the plank"
        tile6.backgroundImage = UIImage(named: "PiratePlank.jpg")
        tile6.healthEffect = -22
        tile6.actionButtonName = "Show no fear"
        
        var column2 = [tile4, tile5, tile6]
        
        var tile7 = TileModel()
        tile7.story = "You sight a pirate battle off the coast"
        tile7.backgroundImage = UIImage(named: "PirateShipBattle.jpg")
        tile7.healthEffect = 8
        tile7.actionButtonName = "Fight those scum"
        
        var tile8 = TileModel()
        tile8.story = "The legend of the deep, the mighty kraken appears"
        tile8.backgroundImage = UIImage(named: "PirateOctopusAttack.jpg")
        tile8.healthEffect = -46
        tile8.actionButtonName = "Abandon Ship"
        
        var tile9 = TileModel()
        tile9.story = "You stumble upon a hidden cave of pirate treasurer"
        tile9.backgroundImage = UIImage(named: "PirateTreasure.jpg")
        tile9.healthEffect = 20
        tile9.actionButtonName = "Take Treasure"
        
        var column3 = [tile7, tile8, tile9]
        
        var tile10 = TileModel()
        tile10.story = "A group of pirates attempts to board your ship"
        tile10.backgroundImage = UIImage(named: "PirateAttack.jpg")
        tile10.healthEffect = -15
        tile10.actionButtonName = "Repel the invaders"
        
        var tile11 = TileModel()
        tile11.story = "In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?"
        tile11.backgroundImage = UIImage(named: "PirateTreasurer2.jpg")
        tile11.healthEffect = -7
        tile11.actionButtonName = "Swim deeper"
        
        var tile12 = TileModel()
        tile12.story = "Your final faceoff with the fearsome pirate boss"
        tile12.backgroundImage = UIImage(named: "PirateBoss.jpg")
        tile12.healthEffect = -15
        tile12.actionButtonName = "Fight"
        
        var column4 = [tile10, tile11, tile12]
        
        var tiles = [column1, column2, column3, column4]
        
        return tiles
    }
    
    func character()->CharacterModel {
        var character = CharacterModel()
        
        var armor = ArmorModel()
        armor.name = "Cloak"
        armor.health = 5
        
        var weapon = WeaponModel()
        weapon.name = "Fists"
        weapon.damage = 10
        
        character.health = 100
        character.damage = 0
        character.armor = armor
        character.weapon = weapon
        
        return character
    }
    
    func boss()->BossModel {
        var boss = BossModel()
        boss.health = 65
        
        return boss
    }
   
}
