//
//  ViewController.swift
//  Swift Pirate Adventure
//
//  Created by Reinaldo Haynes on 7/31/14.
//  Copyright (c) 2014 Reinaldo Haynes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentPoint: CGPoint!
    var tiles: [AnyObject]!
    var character: CharacterModel!
    var boss: BossModel!
    
    @IBOutlet var backgrandImageView: UIImageView!
    
    @IBOutlet var healthLabel: UILabel!
    @IBOutlet var damageLabel: UILabel!
    @IBOutlet var weaponLabel: UILabel!
    @IBOutlet var armorLabel: UILabel!

    @IBOutlet var actionButton: UIButton!
    
    @IBOutlet var storyLabel: UILabel!
    
    @IBOutlet var northButton: UIButton!
    @IBOutlet var southButton: UIButton!
    @IBOutlet var westButton: UIButton!
    @IBOutlet var eastButton: UIButton!
    
    //MARK: IBActions
    
    @IBAction func actionButtonPressed(sender: UIButton) {
        var tile = self.tiles[Int(self.currentPoint.x)][Int(self.currentPoint.y)] as TileModel
        
        if tile.healthEffect == -15 {
            self.boss.health = self.boss.health! - self.character.damage!
        }
        self.updateCharacterStats(armor: tile.armor, weapon: tile.weapon, healthEffect: tile.healthEffect)
        
        if self.character.health! <= 0 {
            UIAlertView(title: "Death Notice", message: "You have died. Please restart the game.", delegate: nil, cancelButtonTitle: "Ok").show()
        }
        
        if self.boss.health! <= 0 {
            UIAlertView(title: "Victory Notice", message: "You have defeated the boss.", delegate: nil, cancelButtonTitle: "Ok").show()
        }
        
        self.updateTile()
    }
    
    @IBAction func resetButtonPressed(sender: UIButton) {
        self.character = nil
        self.boss = nil
        self.viewDidLoad()
    }
    
    @IBAction func northButtonPressed(sender: UIButton) {
        self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)
        self.updateTile()
        self.updateButtons()
    }
    
    @IBAction func southButtonPressed(sender: UIButton) {
        self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)
        self.updateTile()
        self.updateButtons()
    }
    
    @IBAction func eastButtonPressed(sender: UIButton) {
        self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)
        self.updateTile()
        self.updateButtons()
    }
    
    @IBAction func westButtonPressed(sender: UIButton) {
        self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)
        self.updateTile()
        self.updateButtons()
    }
    
    //MARK: Overrides
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var factory = Factory()
        self.tiles = factory.tiles()
        self.character = factory.character()
        self.boss = factory.boss()
        self.currentPoint = CGPointMake(0, 0)
        self.updateCharacterStats(armor: nil, weapon: nil, healthEffect: nil)
        self.updateTile()
        self.updateButtons()
    }
    
    
    //MARK: Custom Functions
    func tileExistsAtPoint(point: CGPoint)->Bool {
        if point.x >= 0 && point.y >= 0 && Int(point.x) < self.tiles.count && Int(point.y) < self.tiles[Int(point.x)].count {
            return true
        }
        return false
    }
    
    func updateCharacterStats(#armor: ArmorModel?, weapon: WeaponModel?, healthEffect: Int?) {
        if armor != nil {
            self.character.health = self.character.health! - self.character.armor!.health! + armor!.health!
            self.character.armor = armor
        }
        else if weapon != nil {
            self.character.damage = self.character.damage! - self.character.weapon!.damage! + weapon!.damage!
            self.character.weapon = weapon
        }
        else if healthEffect != nil {
            self.character.health = self.character.health! + healthEffect!
        }
        else {
            self.character.health = self.character.health! + self.character.armor!.health!
            self.character.damage = self.character.damage! + self.character.weapon!.damage!
        }
    }
    
    func updateTile() {
        var tileModel = self.tiles[Int(self.currentPoint.x)][Int(self.currentPoint.y)] as TileModel
        
        self.storyLabel.text = tileModel.story
        self.backgrandImageView.image = tileModel.backgroundImage
        
        self.healthLabel.text = "\(self.character.health!)"
        self.damageLabel.text = "\(self.character.damage!)"
        self.armorLabel.text = "\(self.character.armor!.name!)"
        self.weaponLabel.text = "\(self.character.weapon!.name!)"
        
        self.actionButton.setTitle(tileModel.actionButtonName, forState: UIControlState.Normal)
    }
    
    func updateButtons() {
        self.northButton.hidden     = !self.tileExistsAtPoint(CGPointMake(self.currentPoint.x, self.currentPoint.y + 1))
        self.southButton.hidden     = !self.tileExistsAtPoint(CGPointMake(self.currentPoint.x, self.currentPoint.y - 1))
        self.eastButton.hidden      = !self.tileExistsAtPoint(CGPointMake(self.currentPoint.x + 1, self.currentPoint.y))
        self.westButton.hidden      = !self.tileExistsAtPoint(CGPointMake(self.currentPoint.x - 1, self.currentPoint.y))
    }
}

