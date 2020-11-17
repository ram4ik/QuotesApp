//
//  ContentView.swift
//  QuotesApp
//
//  Created by Ramill Ibragimov on 17.11.2020.
//

import SwiftUI

struct ContentView: View {
    
    var quotes: [Quote]
    
    var body: some View {
        VStack {
            Spacer()
            MainView(quotes: quotes)
            Spacer()
        }.background(
            LinearGradient(gradient: Gradient(colors: [Color("BgTop"), Color("BgBottom")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
    }
}
