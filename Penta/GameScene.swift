//
//  GameScene.swift
//  Penta
//
//  Created by Jacob Smith on 9/21/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let player = SKSpriteNode(imageNamed: "playerlol")
    
    
    override func didMove(to view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "background")
        background.size = self.size
        let width = 2436
        let height = 1125
        background.position = CGPoint(x: width/2, y: height/2)
        background.zPosition = 0
        self.addChild(background)
        
        
        player.setScale(1)
        player.position = CGPoint(x: (2436/5) * 4, y: (1125/4) * 3)
        player.zPosition = 2
        self.addChild(player)
    }
    
    func fireBullet() {
        let bullet = SKSpriteNode(imageNamed: "playerbullet")
        bullet.setScale(1)
        bullet.position = player.position
    }
    
}
