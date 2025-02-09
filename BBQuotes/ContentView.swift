//
//  ContentView.swift
//  BBQuotes
//
//  Created by Aakash Ambodkar
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab(Constants.bbName , systemImage: Constants.bbSysImage) {
                QuoteView(show: Constants.bbName)
            }
            
            Tab(Constants.bcsName, systemImage: Constants.bcsSysImage ) {
                QuoteView(show: Constants.bcsName)
            }
            
            Tab(Constants.ecName, systemImage: Constants.ecSysImage) {
                QuoteView(show: Constants.ecName)
            }
        }
        .preferredColorScheme(.dark)
    }
}


#Preview {
    ContentView()
}
