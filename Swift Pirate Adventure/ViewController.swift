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
    }
    
    @IBAction func southButtonPressed(sender: UIButton) {
    }
    
    @IBAction func eastButtonPressed(sender: UIButton) {
    }
    
    @IBAction func westButtonPressed(sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var factory = Factory()
        self.tiles = factory.tiles()
        self.currentPoint = CGPointMake(0, 0)
        self.updateTile()
    }
    
    func updateTile() {
        var tileModel = tiles[Int(self.currentPoint.x)][Int(self.currentPoint.y)] as Tile
        self.storyLabel.text = tileModel.story
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

