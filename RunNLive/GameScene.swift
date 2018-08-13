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
    var hero : JBHero!
    var movingGround : JBMovingGround!
    
    override func didMove(to view: SKView) {
        
        // Get label node from scene and store it for use later
        self.backgroundColor = SKColor.green
        addHero()
        movingGround = JBMovingGround(size: CGSize(width: (view.frame.size.width*2/3)-10, height: view.frame.size.height))
        movingGround.position = CGPoint(x: 0.0, y: -view.frame.size.height)
        movingGround.zPosition = -1
        addChild(movingGround)
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    func addHero(){
        hero = JBHero()
        hero.position = CGPoint(x: 0.0, y: -self.frame.size.height/2 + hero.frame.size.height/2 + 20)
        addChild(hero)
    }
}
