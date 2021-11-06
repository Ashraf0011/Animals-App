//
//  InsetGalleryView.swift
//  Animals App
//
//  Created by Md Ashraful Islam on 23/10/21.
//

import SwiftUI

struct InsetGalleryView: View {

    let animal: Animal

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }//:hstack
        }//scroll
    }
}

struct InsetGalleryView_Previews: PreviewProvider {

    static let animals: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
