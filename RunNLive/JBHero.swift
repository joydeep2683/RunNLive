//
//  Hero.swift
//  RunNLive
//
//  Created by Joydeep on 13/08/18.
//  Copyright © 2018 Joydeep. All rights reserved.
//

import Foundation
import SpriteKit

class JBHero : SKSpriteNode {
    
    var body : SKSpriteNode!
    
    init() {
        let size = CGSize(width: 100.0, height: 100.0)
        super.init(texture: nil, color: UIColor.clear, size : size)
        loadAppearance()
        loadPhysicsBodyWithSize(size: size)
    }
    
    func loadAppearance(){
        body = SKSpriteNode(color: UIColor.blue, size: CGSize(width: self.frame.size.width, height: self.frame.size.height))
        addChild(body)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadPhysicsBodyWithSize(size : CGSize){
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody?.categoryBitMask = heroCategory
        physicsBody?.contactTestBitMask = carCategory
        physicsBody?.affectedByGravity = false
    }
}
