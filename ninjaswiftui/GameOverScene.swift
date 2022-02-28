//
//  GameOverScene.swift
//  ninjaswiftui
//
//  Created by William Smith on 2/14/22.
//

import Foundation
import SpriteKit

class GameOverScene: SKScene {
    init(size: CGSize, won: Bool){
        super.init(size: size)
        backgroundColor = SKColor.white
        
        let message = won ? "You win!!!" : "You lost!"
        
        let label = SKLabelNode(fontNamed: "Chalkduster")
        
        label.text = message
        label.fontSize = 40
        label.fontColor = SKColor.black
        label.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
