//
//  CoverImageView.swift
//  Animals App
//
//  Created by Md Ashraful Islam on 22/10/21.
//

import SwiftUI

struct CoverImageView: View {
    //PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    
    //BODY
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }
            
        }//:tab
        .tabViewStyle(PageTabViewStyle())
        
        
    }//:body
}

//PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
