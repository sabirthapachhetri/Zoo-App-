//
//  MainView.swift
//  Africa
//
//  Created by Sabir's MacBook on 9/13/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem{
                    Image(systemName: "square.grid.2x2")
                    Text("browse")
                }
            
            VideoListView()
                .tabItem{
                    Image(systemName: "play.rectangle")
                    Text("watch")
                }
            
            MapView()
                .tabItem{
                    Image(systemName: "map")
                    Text("locations")
                }
            
            GalleryView()
                .tabItem{
                    Image(systemName: "photo")
                    Text("gallery")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
