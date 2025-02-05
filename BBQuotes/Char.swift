//
//  Char.swift
//  BBQuotes
//
//  Created by Aakash Ambodkar
//
import Foundation

struct Char: Decodable {
    let name: String
    let birthday: String
    let occupations: [String]
    let images: [URL]
    let aliases: [String]
    let status: String
    let portrayedBy: String
}


