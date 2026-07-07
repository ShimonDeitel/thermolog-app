import SwiftUI

@main
struct ThermologApp: App {
    @StateObject private var store = ThermologStore()
    @StateObject private var purchases = PurchaseManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
                .environmentObject(purchases)
                .task {
                    await purchases.refreshEntitlement()
                    store.isPro = purchases.isPro
                }
                .onChange(of: purchases.isPro) { _, newValue in
                    store.isPro = newValue
                }
        }
    }
}
