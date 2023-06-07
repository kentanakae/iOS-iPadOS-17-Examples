import SwiftUI
import SwiftData

@main
struct iOS_iPadOS_17_ExamplesApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
