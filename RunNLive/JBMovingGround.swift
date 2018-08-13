//
//  JBMovingGround.swift
//  RunNLive
//
//  Created by Joydeep on 13/08/18.
//  Copyright © 2018 Joydeep. All rights reserved.
//

import Foundation
import SpriteKit

class JBMovingGround: SKSpriteNode {
    
    let NUMBER_OF_SEGMENTS = 20
    let COLOR_ONE = UIColor(red: 10.0/255.0, green: 140.0/255.0, blue: 0.7/225.0, alpha: 1.0)
    let COLOR_TWO = UIColor(red: 120.0/255.0, green: 195.0/255.0, blue: 110.0/255.0, alpha: 1.0)
    
    init(size : CGSize) {
        super.init(texture: nil, color: UIColor.brown, size: CGSize(width: size.width, height: size.height*2))
        anchorPoint = CGPoint(x: 0.5, y: 0.0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func start(){
        let adjustedDuration = frame.size.width / 20
        let moveLeft = SKAction.moveBy(x: 0.0, y: -frame.size.width / 2, duration: TimeInterval(adjustedDuration/2))
        let resetPosition = SKAction.moveTo(x: 0, duration: 0)
        let moveSequence = SKAction.sequence([moveLeft, resetPosition])
        run(SKAction.repeatForever(moveSequence))
    }
}
