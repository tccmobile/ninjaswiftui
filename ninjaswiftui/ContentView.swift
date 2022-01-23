//
//  ContentView.swift
//  ninjaswiftui
//
//  Created by William Smith on 1/23/22.
//

import SwiftUI
import SpriteKit

// A simple game scene with falling boxes
class GameScene: SKScene {
    let generator = ColorGenerator()
    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let boxSize = Int.random(in: 20...50)
        let box = SKSpriteNode(color: generator.random(), size: CGSize(width: boxSize, height: boxSize))
        box.position = location
        box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: boxSize, height: boxSize))
        box.physicsBody?.restitution = 0.8
        addChild(box)
    }
}

// A sample SwiftUI creating a GameScene and sizing it
// at 300x400 points
struct ContentView: View {
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize(width: 300, height: 400)
        scene.scaleMode = .aspectFill
        return scene
    }

    var body: some View {
        SpriteView(scene: scene)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)

            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
