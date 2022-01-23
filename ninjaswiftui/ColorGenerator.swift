//
//  ColorGenerator.swift
//  ninjaswiftui
//
//  Created by William Smith on 1/23/22.
//

import GameKit
import SpriteKit

struct ColorGenerator {
    private let distribution : GKRandomDistribution
    private let possibleColors = [
        SKColor.red,
        SKColor.blue,
        SKColor.green,
        SKColor.purple,
        SKColor.yellow,
        SKColor.brown,
        SKColor.white
    ]

    init() {
        distribution = GKShuffledDistribution(lowestValue: 0, highestValue: possibleColors.count - 1)
    }

    func random() -> SKColor {
        return possibleColors[distribution.nextInt()]
    }
}

