//
//  _1_TinyDesigns_TipCalculatorApp.swift
//  01-TinyDesigns-TipCalculator
//
//  Created by Tan Chan on 11/6/23.
//

import SwiftUI

@main
struct _1_TinyDesigns_TipCalculatorApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
