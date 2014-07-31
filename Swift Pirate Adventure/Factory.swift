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
        tile1.story = "story 1"
        
        var tile2 = Tile()
        tile2.story = "story 2"
        
        var tile3 = Tile()
        tile3.story = "story 3"
        
        var column1 = [tile1, tile2, tile3]
        
        var tile4 = Tile()
        tile4.story = "story 4"
        
        var tile5 = Tile()
        tile5.story = "story 5"
        
        var tile6 = Tile()
        tile6.story = "story 6"
        
        var column2 = [tile4, tile5, tile6]
        
        var tile7 = Tile()
        tile7.story = "story 7"
        
        var tile8 = Tile()
        tile8.story = "story 8"
        
        var tile9 = Tile()
        tile9.story = "story 9"
        
        var column3 = [tile7, tile8, tile9]
        
        var tile10 = Tile()
        tile10.story = "story 10"
        
        var tile11 = Tile()
        tile11.story = "story 11"
        
        var tile12 = Tile()
        tile12.story = "story 12"
        
        var column4 = [tile10, tile11, tile12]
        
        var tiles = [column1, column2, column3, column4]
        
        return tiles
    }
   
}
