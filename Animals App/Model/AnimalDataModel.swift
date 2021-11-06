//
//  AnimalDataModel.swift
//  Animals App
//
//  Created by Md Ashraful Islam on 22/10/21.
//

import SwiftUI

struct Animal: Identifiable, Codable{
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
