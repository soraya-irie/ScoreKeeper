//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by soraya irie on 2026/03/29.
//

import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {

    @Test("Reset player scores", arguments: [0, 10, 20])
    func resetScores(to newValue: Int) async throws {
        var scoreboard = Scoreboard(players: [
            Player(name: "Elisha", score: 0),
            Player(name: "Andre" , score: 5),
        ])
        scoreboard.resetScores(to: newValue)

        for player in scoreboard.players {
            #expect(player.score == newValue)
        }
    }

    @Test("Highest score wins")
    func highestScoreWins() {
        let scoreboard = Scoreboard(
            players: [
                Player(name: "Elisha", score: 0),
                Player(name: "Andre" , score: 4),
            ],
            state: .gameOver,
            doesHighestScoreWin: true
        )
    }
}
