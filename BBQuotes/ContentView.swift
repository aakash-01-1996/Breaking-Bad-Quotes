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
                FetchView(show: Constants.bbName)
            }
            
            Tab(Constants.bcsName, systemImage: Constants.bcsSysImage ) {
                FetchView(show: Constants.bcsName)
            }
            
            Tab(Constants.ecName, systemImage: Constants.ecSysImage) {
                FetchView(show: Constants.ecName)
            }
        }
        .preferredColorScheme(.dark)
    }
}


#Preview {
    ContentView()
}
