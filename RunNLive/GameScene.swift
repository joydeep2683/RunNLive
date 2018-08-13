//
//  GameScene.swift
//  RunNLive
//
//  Created by Joydeep on 12/08/18.
//  Copyright © 2018 Joydeep. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    var hero : Hero!
    
    override func didMove(to view: SKView) {
        
        // Get label node from scene and store it for use later
        self.backgroundColor = SKColor.green
        addHero()
        

    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    func addHero(){
        hero = Hero()
        hero.position = CGPoint(x: 0.0, y: -self.frame.size.height/2 + hero.frame.size.height/2 + 20)
        addChild(hero)
    }
}
