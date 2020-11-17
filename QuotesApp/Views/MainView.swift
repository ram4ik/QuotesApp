//
//  MainView.swift
//  QuotesApp
//
//  Created by Ramill Ibragimov on 17.11.2020.
//

import SwiftUI

struct MainView: View {
    
    var quotes: [Quote]
    
    var body: some View {
        VStack {
            HStack{
                Text("\(self.quotes.count) Quotes Available")
                    .font(.subheadline)
                    .italic()
                    .foregroundColor(.white)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(self.quotes, id: \.name) { quote in
                        VStack {
                            Text(#" "\#(quote.quote) " "#)
                                .font(.headline)
                                .foregroundColor(.black)
                            HStack {
                                Spacer()
                                Text("By - \(quote.name)")
                                    .italic()
                                    .font(.custom("Helvetica neue", size: 14))
                                    .foregroundColor(.black)
                            }.padding()
                        }.frame(width: 300, height: 300)
                        .padding(.all, 10)
                        .background(Color.white)
                        .cornerRadius(15)
                    }
                }
            }
        }
    }
}

