//
//  FetchService.swift
//  BBQuotes
//
//  Created by Aakash Ambodkar
//
import Foundation

struct FetchService {
    enum FetchError: Error {
        case badResponse
    }
    
    let baseURL = URL(string: "https://breaking-bad-api-six.vercel.app/api")!
    
     // https://breaking-bad-api-six.vercel.app/api/quotes/random?production=Breaking+Bad
    func fetchQuote(from show: String) async throws -> Quote {
        // Todo: Build fetch URL
        let quoteURL = baseURL.appending(path: "quotes/random")
        let fetchURL = quoteURL.appending(queryItems: [URLQueryItem(name: "production", value: show)])
    
        // Todo: Fetch data
        
        // Todo: Handle response
        
        // Todo: Decode data
        
        // Todo: Return Quote
    }
}
