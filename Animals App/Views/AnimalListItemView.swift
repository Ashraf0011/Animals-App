//
//  AnimalListItemView.swift
//  Animals App
//
//  Created by Md Ashraful Islam on 22/10/21.
//

import SwiftUI

struct AnimalListItemView: View {
    // PROPERTIES
    let animal: Animal
    
    // BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            // IMAGE
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 8) {
                // TITLE
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                // HEADLINE
                Text(animal.headline)
                    .font(.caption2)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
            
        } //: hstack
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalListItemView(animal: animals[2])
            .previewLayout(.fixed(width: 460, height: 80))
            .padding()
    }
}
