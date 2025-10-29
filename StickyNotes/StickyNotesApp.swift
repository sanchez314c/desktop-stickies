//
//  StickyNotesApp.swift
//  StickyNotes
//
//  Created on 2025-01-21
//

import SwiftUI

@main
struct StickyNotesApp: App {
    var body: some Scene {
        WindowGroup {
            VStack(spacing: 20) {
                Text("StickyNotes")
                    .font(.largeTitle)
                    .bold()

                Text("Full-featured notes app coming soon!")
                    .font(.title2)
                    .foregroundColor(.secondary)

                Text("✅ App launches successfully")
                Text("✅ Window displays properly")
                Text("✅ Universal binary (Intel + ARM)")
                Text("✅ Ready for feature implementation")

                Spacer()

                Text("Built with SwiftUI & Swift Package Manager")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding()
            .frame(minWidth: 600, minHeight: 400)
        }
    }
}

