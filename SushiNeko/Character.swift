//
//  Character.swift
//  SushiNeko
//
//  Created by Cao Mai on 11/5/19.
//  Copyright © 2019 Cao Mai. All rights reserved.
//

import SpriteKit

class Character: SKSpriteNode {
    
    /* to link the punch animation */
    let punch = SKAction(named: "Punch")!

    
    /* Character side */
    var side: Side = .left {
        didSet {
            if side == .left {
                xScale = 1
                position.x = 70
            } else {
                /* An easy way to flip an asset horizontally is to invert the X-axis scale */
                xScale = -1
                position.x = 252
            }
            /* Run the punch action */
            run(punch)
        }
    }
    
    /* You are required to implement this for your subclass to work */
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }
    
    /* You are required to implement this for your subclass to work */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
