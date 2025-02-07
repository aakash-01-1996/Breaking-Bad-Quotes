//
//  ViewModel.swift
//  BBQuotes
//
//  Created by Aakash Ambodkar
//

import Foundation

@Observable
@MainActor
class ViewModel {
    enum FetchStatus {
        case notStarted
        case fetching
        case success
        case failed(error: Error)
        
    }
    
    private(set) var staus: FetchStatus = .notStarted
    
    private let fetcher = FetchService()
    
    var quote: Quote
    var character: Char
    
    init() {
        
    }
}
