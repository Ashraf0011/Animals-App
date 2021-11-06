//
//  VideoListItem.swift
//  Animals App
//
//  Created by Md Ashraful Islam on 27/10/21.
//

import SwiftUI

struct VideoListItem: View {
    // PROPERTIES
    let video: Video

    // BODY
    var body: some View {
        HStack(spacing: 10){
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height:90)
                .cornerRadius(8)
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                    .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 10, x: 2, y: 2)
            } //:zstack

            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy )
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)



            } //:vstack


        } //:hstack
    }
}

struct VideoListItem_Previews: PreviewProvider {

    static let videos: [Video] = Bundle.main.decode("animals.json")

    static var previews: some View {
        VideoListItem(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
