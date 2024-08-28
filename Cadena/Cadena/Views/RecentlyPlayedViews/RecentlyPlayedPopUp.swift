import SwiftUI

struct RecentlyPlayedPopUp: View {
    @State private var isNowPlayingPresented = false
    
    // Example data for recently played songs
    let recentlyPlayedSongs = [
        ["imageName": "SnohAelegra", "songName": "I Want You Around", "artistName": "Snoh Aelegra"],
        ["imageName": "AnotherArtist", "songName": "Another Song", "artistName": "Another Artist"]
    ]
    
    var body: some View {
        VStack {
            NavigationButton(columnTitle: "Recently Played", action: {
                
            }, size: CGSize(width: 30, height: 50), cornerRadiusSize: 0, imageName: "ChevronRight")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(recentlyPlayedSongs, id: \.self) { song in
                        Button {
                            isNowPlayingPresented = true
                        } label: {
                            SongComponent(
                                imageName: song["imageName"]!,
                                songName: song["songName"]!,
                                artistName: song["artistName"]!,
                                size: CGSize(width: 155, height: 155)
                            )
                        }
                        .tint(Color(.label))
                    }
                    .fullScreenCover(isPresented: $isNowPlayingPresented) {
                        NowPlayingView()
                    }
                }
            }
            .padding(.vertical, -15)
        }
    }
}

struct RecentlyPlayedPopUp_Previews: PreviewProvider {
    static var previews: some View {
        RecentlyPlayedPopUp()
    }
}
