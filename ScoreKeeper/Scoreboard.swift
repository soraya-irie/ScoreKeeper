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
    var doesHighestScoreWin = true

    var winners: [Player] {
        guard state == .gameOver else { return [] }

        var winningScore = 0
        if doesHighestScoreWin {

        } else {

        }

        return players
    }

    mutating func resetScores(to newValue: Int) {
        for index in 0..<players.count {
            players[index].score = newValue
        }
    }
}
