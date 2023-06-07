import DataAccess
import FeatureMain
import SwiftUI
import SwiftData

public struct ExamplesApp: App {
    public init() {}

    public var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
