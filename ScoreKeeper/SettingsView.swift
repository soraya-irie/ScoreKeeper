//
//  SettingsView.swift
//  ScoreKeeper
//
//  Created by soraya irie on 2026/03/31.
//

import SwiftUI

struct SettingsView: View {
    @Binding var doesHighestScoreWin: Bool
    @Binding var startingPoints: Int

    var body: some View {
        VStack(alignment: .leading) {
            Text("Game Rules")
                .font(.headline)
            Divider()
            Picker("Starting points", selection: $startingPoints) {
                Text("0 starting points")
                    .tag(0)
                Text("10 starting points")
                    .tag(10)
                Text("20 starting points")
                    .tag(20)
            }
        }
        .padding()
        .background(.thinMaterial, in: .rect(cornerRadius: 10.0))
    }
}

#Preview {
    @Previewable @State var doesHighestScoreWin = true
    @Previewable @State var startingPoints = 10
    SettingsView(doesHighestScoreWin: $doesHighestScoreWin, startingPoints: $startingPoints)
}
