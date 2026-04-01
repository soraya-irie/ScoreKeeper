//
//  Player.swift
//  ScoreKeeper
//
//  Created by soraya irie on 2026/03/28.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    
    var name: String
    var score: Int
}

extension Player: Equatable {

}
