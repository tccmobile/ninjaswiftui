//
//  GameOverScene.swift
//  ninjaswiftui
//
//  Created by William Smith on 2/14/22.
//

import Foundation
import SpriteKit

class GameOverScene: SKScene {
    init(size: CGSize, won: Bool, score: Int){
        super.init(size: size)
        backgroundColor = SKColor.white
        
        let message = won ? "You win!!!" : "You lost!"
        
        let label = SKLabelNode(fontNamed: "Chalkduster")
        
        label.text = message
        label.fontSize = 28
        label.fontColor = SKColor.black
        label.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(label)
        
        let scoreLabel = SKLabelNode(fontNamed: "Chalkduster")
        scoreLabel.text = "Your score was: \(score)."
        scoreLabel.fontSize = 28
        scoreLabel.fontColor = SKColor.black
        scoreLabel.position = CGPoint(x: size.width/2, y: size.height/2 - 50)
        addChild(scoreLabel)
        
        run(SKAction.sequence([
            SKAction.wait(forDuration: 5.0),
            SKAction.run(){ [weak self] in
                guard let `self` = self else {return}
                let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
                let scene = GameScene(size: size)
                self.view?.presentScene(scene, transition: reveal)
            }
        ]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
