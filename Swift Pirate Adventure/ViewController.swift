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
    
    
    @IBAction func actionButtonPressed(sender: UIButton) {
    }
    
    @IBAction func northButtonPressed(sender: UIButton) {
        self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)
        self.updateTile()
    }
    
    @IBAction func southButtonPressed(sender: UIButton) {
        self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)
        self.updateTile()
    }
    
    @IBAction func eastButtonPressed(sender: UIButton) {
        self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)
        self.updateTile()
    }
    
    @IBAction func westButtonPressed(sender: UIButton) {
        self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)
        self.updateTile()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var factory = Factory()
        self.tiles = factory.tiles()
        self.currentPoint = CGPointMake(0, 0)
        self.updateTile()
    }
    
    
    // CUSTOM FUNCTIONS
    func tileExistsAtPoint(point: CGPoint)->Bool {
        if point.x >= 0 && point.y >= 0 && Int(point.x) < self.tiles.count && Int(point.y) < self.tiles[Int(point.x)].count {
            return true
        }
        return false
    }
    
    func updateTile() {
        var tileModel = tiles[Int(self.currentPoint.x)][Int(self.currentPoint.y)] as TileModel
        self.storyLabel.text = tileModel.story
        self.backgrandImageView.image = tileModel.backgroundImage
        self.updateButtons()
    }
    
    func updateButtons() {
        self.northButton.hidden     = !self.tileExistsAtPoint(CGPointMake(self.currentPoint.x, self.currentPoint.y + 1))
        self.southButton.hidden     = !self.tileExistsAtPoint(CGPointMake(self.currentPoint.x, self.currentPoint.y - 1))
        self.eastButton.hidden      = !self.tileExistsAtPoint(CGPointMake(self.currentPoint.x + 1, self.currentPoint.y))
        self.westButton.hidden      = !self.tileExistsAtPoint(CGPointMake(self.currentPoint.x - 1, self.currentPoint.y))
    }

    

}

