import SwiftUI

struct NowPlayingView: View {
    var albumImage: String = "SnohAelegra"
    @Environment(\.presentationMode) var presentationMode
    @State private var isShowingLyrics = false
    
    var body: some View {
        VStack {
            HStack {
                CustomButton(action: {
                    presentationMode.wrappedValue.dismiss()
                }, size: CGSize(width: 10, height: 20), cornerRadiusSize: 0, imageName: "ChevronLeft")
                Spacer()
                VStack {
                    Text("NOW PLAYING FROM")
                        .font(.system(size: 10))
                    Text("UHG, THOSE FEELS AGAIN")
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                }
                Spacer()
                CustomButton(action: {
                    
                }, size: CGSize(width: 18, height: 28), cornerRadiusSize: 0, imageName: "MenuButton")
            }
            .padding(.horizontal, 10)
            ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Image(albumImage)
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: 350, maxHeight: 327)
                            .cornerRadius(16)
                            .shadow(color: Color(.black).opacity(0.6), radius: 3, x: 2, y: 2)
                            .padding(5)
                    }
                    
                    VStack {
                        transparentRectangle()
                            .overlay(
                                VStack {
                                    HStack {
                                        CustomButton(action: {
                                            
                                        }, size: CGSize(width: 25, height: 25), cornerRadiusSize: 0, imageName: "playlist_icon")
                                        Spacer()
                                        VStack {
                                            Text("I Want You Around")
                                                .fontWeight(.semibold)
                                            Text("Snoh Aelegra")
                                            
                                        }
                                        Spacer()
                                        CustomButton(action: {
                                            
                                        }, size: CGSize(width: 25, height: 25), cornerRadiusSize: 0, imageName: "heart_icon")
                                    }
                                    
                                    VStack {
                                        ProgressView(value: 0.63)
                                            .tint(Color.black)
                                        HStack {
                                            Text("2:18")
                                                .font(.system(size: 12))
                                            Spacer()
                                            Text("3:33")
                                                .font(.system(size: 12))
                                        }
                                        .padding(.top, -6)
                                    }
                                    
                                    HStack {
                                        CustomButton(action: {
                                            
                                        }, size: CGSize(width: 22, height: 21), cornerRadiusSize: 0, imageName: "shuffle_icon").padding(.trailing, 23)
                                        CustomButton(action: {
                                            
                                        }, size: CGSize(width: 29, height: 32), cornerRadiusSize: 0, imageName: "rewind_end_icon")
                                        CustomButton(action: {
                                            
                                        }, size: CGSize(width: 50, height: 50), cornerRadiusSize: 0, imageName: "pause_icon").padding(.horizontal)
                                        CustomButton(action: {
                                            
                                        }, size: CGSize(width: 29, height: 32), cornerRadiusSize: 0, imageName: "forward_end_icon")
                                        CustomButton(action: {
                                            
                                        }, size: CGSize(width: 40, height: 28), cornerRadiusSize: 0, imageName: "repeat_all_tracks_icon").padding(.leading, 10)
                                    }
                                    .padding(.horizontal)
                                }.padding(.horizontal)
                                
                            )
                        Button {
                            isShowingLyrics = true
                        } label: {
                            transparentRectangle()
                                .padding(.bottom)
                                .overlay(
                                    VStack {
                                        Text("Lyrics")
                                            .font(.system(size: 13))
                                            .padding(.top)
                                        ScrollView(.vertical, showsIndicators: false) {
                                            Text("I just wanna get away \nAnd sit right next to you, you \nI don’t wanna kiss you \nYeah, I just wanna feel you \nFeel you \nI want you around(around)")
                                                .frame(maxWidth: 310, maxHeight: .infinity)
                                                .font(.system(size: 16))
                                                .multilineTextAlignment(.center)
                                        }
                                        
                                    }
                                        .tint(Color(.label))
                                )
                        }
                        .sheet(isPresented: $isShowingLyrics) {
                            LyricsView()
                        }
                    }
            }
        }
        .background(backgroundImage())
    }
    
    func backgroundImage() -> some View {
        Image(albumImage)
            .overlay(
                Rectangle()
                    .fill(.ultraThinMaterial)
            )
            
    }
        
    func transparentRectangle() -> some View {
        RoundedRectangle(cornerRadius: 16)
            .fill(.ultraThinMaterial.opacity(0.1))
            .frame(maxWidth: 350, maxHeight: 220)
            .frame(minWidth: 320, minHeight: 180)
            .shadow(color: Color(.black).opacity(1.9), radius: 1, x: 2, y: 2)
    }
}

struct NowPlayingView_Previews: PreviewProvider {
    static var previews: some View {
        NowPlayingView()
    }
}
