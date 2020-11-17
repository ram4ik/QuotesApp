//
//  QuotesAppApp.swift
//  QuotesApp
//
//  Created by Ramill Ibragimov on 17.11.2020.
//

import SwiftUI

@main
struct QuotesAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(quotes: quoteData)
        }
    }
}
