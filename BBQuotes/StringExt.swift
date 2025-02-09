//
//  StringExt.swift
//  BBQuotes
//
//  Created by Aakash Ambodkar
//

extension String {
    func removeSpaces() -> String {
        return self.replacingOccurrences(of: " ", with: "")
    }
    
    func removeCaseAndSpace() -> String {
        self.removeSpaces().lowercased()
    }
}
