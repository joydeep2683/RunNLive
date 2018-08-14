//
//  JBOtherCars.swift
//  RunNLive
//
//  Created by Joydeep on 14/08/18.
//  Copyright © 2018 Joydeep. All rights reserved.
//

import Foundation
import SpriteKit

class JBOtherCars: SKSpriteNode {
    let CAR_DIMENSION : CGFloat = 100.0
    let CAR_COLOUR = UIColor.red
    let carCategory : UInt32 = 0x1 << 1
    
    init() {
        let size = CGSize(width: CAR_DIMENSION, height: CAR_DIMENSION)
        super.init(texture: nil, color: CAR_COLOUR, size: size)
        loadPhysicsBodyWithSize(size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadPhysicsBodyWithSize(size : CGSize){
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody?.categoryBitMask = carCategory
        physicsBody?.affectedByGravity = true
    }
}
