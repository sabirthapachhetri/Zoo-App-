//
//  VideoListItem.swift
//  Africa
//
//  Created by Sabir's MacBook on 9/16/22.
//

import SwiftUI

struct VideoListItem: View {
    
    let video: Video
    
    var body: some View {
        HStack(spacing: 10){
            ZStack {
                Image("video-\(video.id)")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }
        }
    }
}

struct VideoListItem_Previews: PreviewProvider {
    static let videos: [Video] = Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoListItem(video: videos[1])
    }
}
