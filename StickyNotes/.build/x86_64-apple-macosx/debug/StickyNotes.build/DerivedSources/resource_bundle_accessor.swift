import Foundation

extension Foundation.Bundle {
    static let module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("StickyNotes_StickyNotes.bundle").path
        let buildPath = "/Volumes/apfsRAID/Development/Testing/SWARM-TESTS/swarmV6/StickyNotes/.build/x86_64-apple-macosx/debug/StickyNotes_StickyNotes.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            // Users can write a function called fatalError themselves, we should be resilient against that.
            Swift.fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}