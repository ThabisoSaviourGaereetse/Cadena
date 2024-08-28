//
//  YourPlaylistPopUp.swift
//  Cadena
//
//  Created by Thabiso Gaereetse on 2023/09/10.
//

import SwiftUI

struct YourPlaylistPopUp: View {
    var body: some View {
        VStack {
            NavigationButton(columnTitle: "Your Playlists", action: {
                
            }, size: CGSize(width: 30, height: 50), cornerRadiusSize: 0, imageName: "ChevronRight")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    SongComponent(imageName: "SnohAelegra", songName: "I Want You Around", artistName: "Snoh Aelegra", size: CGSize(width: 155, height: 155))
                    SongComponent(imageName: "SnohAelegra", songName: "I Want You Around", artistName: "Snoh Aelegra", size: CGSize(width: 155, height: 155))
                    SongComponent(imageName: "SnohAelegra", songName: "I Want You Around", artistName: "Snoh Aelegra", size: CGSize(width: 155, height: 155))
                }
            }
            .padding(.vertical, -15)
        }
    }
}

struct YourPlaylistPopUp_Previews: PreviewProvider {
    static var previews: some View {
        YourPlaylistPopUp()
    }
}
