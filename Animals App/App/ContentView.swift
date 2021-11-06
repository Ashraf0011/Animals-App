//
//  ContentView.swift
//  Animals App
//
//  Created by Md Ashraful Islam on 21/10/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    // MARK: - Propperties
    let animals:[Animal] = Bundle.main.decode("animals.json")

    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

                ForEach(animals){ ani in

                    // link to destinition
                    NavigationLink( destination: AnimalDetailsView(animal: ani)){

                    // viweing list
                    AnimalListItemView(animal: ani)
                            .padding(.vertical, 4)
                    }

                } //:loop
                Spacer()

            } //:list
            .navigationTitle("Africa")
        } //:nav
        
}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
