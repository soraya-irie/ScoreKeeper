//
//  Scoreboard.swift
//  ScoreKeeper
//
//  Created by soraya irie on 2026/03/28.
//

import Foundation

struct Scoreboard {
    var players: [Player] = [
        Player(name: "Elisha", score: 0),
        Player(name: "Andre", score: 0),
        Player(name: "Jasmine", score: 0),
    ]

    var state = GameState.setup
}
