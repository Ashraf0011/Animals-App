//
//  VideoDataModel.swift
//  Animals App
//
//  Created by Md Ashraful Islam on 27/10/21.
//

import SwiftUI
import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String

//  Computed Property
    var thumbnail: String{
        "video-\(id)"
    }

}
