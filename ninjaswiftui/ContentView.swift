//
//  ContentView.swift
//  ninjaswiftui
//
//  Created by William Smith on 1/23/22.
//

import SwiftUI
import SpriteKit




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
