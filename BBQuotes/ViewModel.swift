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
    
    private(set) var status: FetchStatus = .notStarted
    
    private let fetcher = FetchService()
    
    var quote: Quote
    var character: Char
    
    init() {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let quoteData = try! Data(contentsOf: Bundle.main.url(forResource: "samplequote", withExtension: "json")!)
        quote = try! decoder.decode(Quote.self, from:quoteData)
        
        let characterData = try! Data(contentsOf: Bundle.main.url(forResource: "samplecharacter", withExtension: "json")!)
        character = try! decoder.decode(Char.self, from:characterData)
    }
    
    func getData(forShow: String) async {
        status = .fetching
        
        do {
            quote = try await fetcher.fetchQuote(from: forShow)
            
            character = try await fetcher.fetchCharcter(quote.character)
            
            character.death = try await fetcher.fetchDeath(for: character.name)
            
            status = .success
        } catch {
            status = .failed(error: error)
        }
    }
}
