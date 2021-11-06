//
//  VideoPlayer.swift
//  Animals App
//
//  Created by Md Ashraful Islam on 6/11/21.
//

import SwiftUI
import AVKit
  /* Comment 1 - Import: import AVKit */
  /* Comment 2 - Create player: Create an AVPlayer within player variable. */
  /* Comment 3 - AVPlayerViewController: Create an AVPlayerViewController in another variable. */
  /* Comment 4 - <#Title#>: <#Description#> */

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    
    var videoSelected : String
    var videoTitle: String
    
    
    let player = AVPlayer(url: Bundle.main.url(forResource: "cheetah", withExtension: "mp4")!)
   
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")){
//                Text(videoTitle)
            } //:videoPlayer
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32.0, height: 32.0)
                    .padding(10)
                ,alignment: .topLeading
            )
        }
    }
}

struct VideoPlayer_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
