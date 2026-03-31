//
//  SettingsView.swift
//  ScoreKeeper
//
//  Created by soraya irie on 2026/03/31.
//

import SwiftUI

struct SettingsView: View {
    @Binding var startingPoints: Int

    var body: some View {
        VStack(alignment: .leading) {
            Text("Game Rules")
                .font(.headline)
            Divider()
        }
        .padding()
    }
}

#Preview {
    @Previewable @State var startingPoints = 10
    SettingsView(startingPoints: $startingPoints)
}
