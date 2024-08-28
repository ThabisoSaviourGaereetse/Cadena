import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
                HStack {
                    ViewTitle(titleText: "Listen Now")
                    Spacer()
                    CustomButton(action: {
                        
                    }, size: CGSize(width: 18, height: 28), cornerRadiusSize: 0, imageName: "MenuButton")
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .padding(.bottom, -5)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    RecentlyPlayedPopUp()
                        .padding(.leading, 6)
                        .padding(.bottom, 25)
                    
                    NewOnCadenaPopUp()
                        .padding(.horizontal, 8)
                    YourPlaylistPopUp()
                        .padding(.leading, 6)
                    
                    Text("Sorry, It all ends here. ;)")
                        .font(.caption)
                        .foregroundColor(Color(.tertiaryLabel))
                        .padding(.vertical, 35)
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
