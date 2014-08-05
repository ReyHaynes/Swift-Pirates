//
//  Tile.swift
//  Swift Pirate Adventure
//
//  Created by Reinaldo Haynes on 7/31/14.
//  Copyright (c) 2014 Reinaldo Haynes. All rights reserved.
//

import UIKit

class TileModel: NSObject {
    
    var story:              String?
    var backgroundImage:    UIImage?
    var actionButtonName:   String?
    var weapon:             WeaponModel?
    var armor:              ArmorModel?
    var healthEffect:       Int?
   
}
