import SwiftUI

struct NewOnCadenaPopUp: View {
    @State private var isNowPlayingPresented = false
    
    let newSongs = [
        ["imageName": "SnohAelegra", "songName": "I Want You Around", "artistName": "Snoh Aelegra"],
        ["imageName": "AnotherArtist", "songName": "Another Song", "artistName": "Another Artist"]
    ]
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("PowderBlue"))
                .frame(maxWidth: 380, maxHeight: 176)
                .frame(minWidth: 320, minHeight: 176)
                .shadow(color: Color(.black).opacity(0.3), radius: 3, x: 5, y: 5)
                .overlay(
                    VStack {
                        NavigationButton(columnTitle: "New on Cadena", action: {
                            
                        }, size: CGSize(width: 30, height: 50), cornerRadiusSize: 0, imageName: "ChevronRight")
                        .padding(.vertical, -15)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(newSongs, id: \.self) { song in
                                    Button {
                                        isNowPlayingPresented = true
                                    } label: {
                                        SongComponent(
                                            imageName: song["imageName"]!,
                                            songName: song["songName"]!,
                                            artistName: song["artistName"]!,
                                            size: CGSize(width: 131, height: 78)
                                        )
                                    }
                                    .tint(Color(.label))
                                }
                                .fullScreenCover(isPresented: $isNowPlayingPresented) {
                                    NowPlayingView()
                                }
                            }
                        }
                        .padding(.horizontal, 5)
                    }
                )
        }
    }
}

struct NewOnCadena_Previews: PreviewProvider {
    static var previews: some View {
        NewOnCadenaPopUp()
    }
}
