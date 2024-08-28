import SwiftUI

struct LibraryView: View {
    @State private var searchText = ""
    @State private var selectedSegment = 0
    
    var body: some View {
        VStack {
            HStack {
                ViewTitle(titleText: "Library")
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            .padding(.bottom, -5)
            
            HStack {
                CustomSegmentedControl(selectedSegment: $selectedSegment)
                Spacer()
                Spacer()
            }
            
            switch selectedSegment {
            case 0:
                Text("Screen 1 Content")
            case 1:
                Text("Screen 2 Content")
            case 2:
                Text("Screen 3 Content")
            default:
                Text("Invalid Selection")
            }
            
            HStack {
                SearchBar(text: $searchText)
                    .padding(.vertical)
                    .padding(.trailing, -18)
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .bold()
                }
                .tint(Color(.label))
                .padding(.horizontal, 10)

            }
            VStack(alignment: .leading) {
                Text("Your Playlist")
                    .padding(.leading)
                HStack {
                    VerticalSongComponent(imageName: "SnohAelegra", songName: "I Want You Around", artistName: "Snoh Aelegra", size: CGSize(width: 60, height: 60))
//                        Button {
//                            <#code#>
//                        } label: {
//                            <#code#>
//                        }

                    Image("song_options_icon")
                        .resizable()
                        .frame(width: 4, height: 20)
                        .padding(.trailing, 8)
                }
                    .padding(.horizontal)
                // Add your content here
                Text("Search results for: \(searchText)")
                    .padding()
            }
            Spacer()
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

struct CustomSegmentedControl: View {
    @Binding var selectedSegment: Int
    
    var body: some View {
        HStack {
            ForEach(0..<3, id: \.self) { index in
                Button(action: {
                    selectedSegment = index
                }) {
                    Text(index == 0 ? "Playlists" : (index == 1 ? "Favourites" : "Artists"))
                        .padding(10)
                        .foregroundColor(index == selectedSegment ? .blue : .black)
                        .cornerRadius(10)
                }
            }
        }
    }
}
