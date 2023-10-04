//
//  ContentView.swift
//  AlternativeIcons
//
//  Created by Morten Bjerg Gregersen on 04/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var currentIconName: String? = UIApplication.shared.alternateIconName
    @State private var error: String?
    
    var body: some View {
        VStack(spacing: 32) {
            if UIApplication.shared.supportsAlternateIcons {
                Text("Supports alternate icons")
                    .foregroundStyle(.green)
                    .font(.headline)
            } else {
                Text("DOES NOT support alternate icons")
                    .foregroundStyle(.red)
                    .font(.headline)
            }
            Button("Use default icon") {
                setIcon(named: nil)
            }
            .foregroundStyle(.primary)
            Button("Use red icon") {
                setIcon(named: "RedIcon")
            }
            .foregroundStyle(.red)
            Button("Use yellow icon") {
                setIcon(named: "YellowIcon")
            }
            .foregroundStyle(.yellow)
            Button("Use green icon") {
                setIcon(named: "GreenIcon")
            }
            .foregroundStyle(.green)
            Button("Use blue icon") {
                setIcon(named: "BlueIcon")
            }
            .foregroundStyle(.blue)
            if let error {
                Text(error)
                    .foregroundStyle(.red)
            }
        }
        .padding()
    }
    
    private func setIcon(named iconName: String?) {
        UIApplication.shared.setAlternateIconName(iconName) { error in
            if let error {
                self.error = error.localizedDescription
            } else {
                currentIconName = UIApplication.shared.alternateIconName
            }
        }
    }
}

#Preview {
    ContentView()
}
