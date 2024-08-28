import SwiftUI

struct SearchView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    ViewTitle(titleText: "Listen Now")
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .padding(.bottom, -5)
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
                    Text("Results")
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
                Button {
                    ContentView()
                } label: {
                    Text("Hit me")
                }
//                NavigationButton(columnTitle: "Hit", action: , size: CGSize(width: 50, height: 50), cornerRadiusSize: 20, imageName: <#T##String#>)

            }
        }
        .accentColor(.red)
    }
}

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            TextField("Find your tatse", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray5))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                )
                .padding(.horizontal, 10)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
