//
//  InsetMapView.swift
//  Animals App
//
//  Created by Md Ashraful Islam on 24/10/21.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599),
        span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0)
    )
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()){
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.primary)
                        .imageScale(.large)
                        Text("Location")
                        .foregroundColor(.accentColor)
                        .fontWeight(.light)
                    } //:hstack
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                } //:nav
                    .padding(12)
                , alignment: .topTrailing
            )
            .frame(height: 256, alignment: .center)
            .cornerRadius(12)
    }
}

struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView().previewLayout(.sizeThatFits)
            .padding()
    }
}
