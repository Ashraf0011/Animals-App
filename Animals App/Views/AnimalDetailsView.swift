//
//  AnimalDetailsView.swift
//  Animals App
//
//  Created by Md Ashraful Islam on 23/10/21.
//

import SwiftUI

struct AnimalDetailsView: View {
    let animal: Animal
    var body: some View {
            ScrollView(.vertical, showsIndicators: false) {
                // HEADER IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 440)

                VStack(alignment: .center, spacing: 20) {
                    // TITLE
                    Text(animal.name.uppercased())
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.center)
                        .background(
                            Color.accentColor
                                .frame(height: 4)
                                .offset(y: 20)
                        )

                    // HEADLINE
                    Text(animal.headline)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal,10)



                    // GALLERY
                    Group{
                        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in the picture")
                        InsetGalleryView(animal: animal)
                    } //:group


                    // FACT
                    Group{
                        HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                        InsetFactView(animal: animal)
                    } //:Fact

                    // DESCRIPTION
                    Group {
                        Text(animal.description)
                            .tracking(1)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)

                    }
                    .padding(.horizontal)


                    // MAP
                    InsetMapView()

                    // LINK
                    ExternalWebLinkView(animal: animal)
                    Spacer()

                } //:vstack
            } //:scroll
            .navigationTitle(Text("More about \(animal.name)"))
            .navigationBarTitleDisplayMode(.large)

    }
}


struct AnimalDetailsView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        AnimalDetailsView(animal: animals[1])
            .previewDevice("iPhone 13 mini")
    }
}
