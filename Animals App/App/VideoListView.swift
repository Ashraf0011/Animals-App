//
//  VideoView.swift
//  Animals App
//
//  Created by Md Ashraful Islam on 22/10/21.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES
   @State var video: [Video] = Bundle.main.decode("videos.json")
    var hapticImpact = UIImpactFeedbackGenerator(style: UIImpactFeedbackGenerator.FeedbackStyle.medium)
    
    
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(video){ item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItem(video: item)
                            .padding(.vertical,10)
                    }
                }
            }
            .navigationTitle("African Animals")
            .listStyle(InsetGroupedListStyle())
            .toolbar { // MARK: - Toolabar
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    Button {
                        // add action
                        withAnimation(Animation.interactiveSpring(), {
                            video.shuffle()
                            hapticImpact.impactOccurred(intensity: 1.0)
                        })
                       
// var video was a value type so we could not modify it. To do that we need to add @State which will make it mutable
                    } label: {
                        // add action lebel if any
                        /* Comment 1 - ButtonLebel: we could add button label either text or only image */
                        Image(systemName: "shuffle")
                    }
                    
                }
            } //: toolbar with 1 button

        } // : nav
    }
}






struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VideoListView()
        }
    }
}
