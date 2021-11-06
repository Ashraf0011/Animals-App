//
//  MainView.swift
//  Animals App
//
//  Created by Md Ashraful Islam on 22/10/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
            TabView{

                ContentView()
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Browse")
                    }
                VideoListView()
                    .tabItem {
                        Image(systemName: "play.rectangle")
                        Text("Watch")
                    }
                GalleryView()
                    .tabItem {
                        Image(systemName: "photo")
                        Text("Gallery")
                    }
                MapView()
                    .tabItem {
                        Image(systemName: "map")
                        Text("location")
                    }


            }//:tab
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
