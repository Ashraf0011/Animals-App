//
//  CodableBundleExtention.swift
//  Animals App
//
//  Created by Md Ashraful Islam on 22/10/21.
//

import Foundation


//
//extension Bundle {
//    func decode(_ file: String) -> [CoverImage] {
//        //1. Locate JSON
//        guard let url = self.url(forResource: file, withExtension: nil) else {
//            fatalError("Failed to locate \(file) in bundle.")
//        }
//
//        //2. Create property for the data
//        guard let data = try? Data(contentsOf: url) else {
//            fatalError("Failed to load \(file) from buldle.")
//        }
//
//
//        //3. create decoder
//        let decoder = JSONDecoder()
//
//
//        //4. Create property for decoded data
//        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
//            fatalError("failed to decode \(file) from bundle")
//        }
//
//
//        //5. return the ready-to-use loaded data
//        return loaded
//    }
//}

// Making it Generic

extension Bundle {
    func decode<T: Codable> (_ file: String) -> T {
        //1. Locate JSON
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        //2. Create property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from buldle.")
        }


        //3. create decoder
        let decoder = JSONDecoder()


        //4. Create property for decoded data
        guard let loaded = try? decoder.decode( T.self, from: data) else {
            fatalError("failed to decode \(file) from bundle")
        }


        //5. return the ready-to-use loaded data
        return loaded
    }
}







