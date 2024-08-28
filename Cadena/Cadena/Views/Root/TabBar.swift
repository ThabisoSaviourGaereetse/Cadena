import SwiftUI

struct TabBar: View {
    @State private var selectedTab = 0
    @State private var isNowPlayingPresented = false
    
    var body: some View {
        VStack {
            
            // TabView to switch between views
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag(0)
                FirstView()
                    .tag(1)
                LibraryView()
                    .tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .onChange(of: selectedTab) { _ in
                // Handle tab change if needed
            }
            .overlay(
                VStack {
                    Spacer()
                    Button {
                        isNowPlayingPresented = true
                    } label: {
                        NowPlayingPopUp()
                    }
                    .tint(Color(.label))
                    .padding(.horizontal, 4)
                    .padding(.bottom,12)
                }
                    .fullScreenCover(isPresented: $isNowPlayingPresented) {
                        NowPlayingView()
                    }
            )
            
            // Custom Tab Bar
            HStack {
                Spacer()
                TabBarItem(imageName: selectedTab == 0 ? "home_selected_icon" : "home_icon", index: 0, selectedTab: $selectedTab)
                Spacer()
                TabBarItem(imageName: selectedTab == 1 ? "explore_selected_icon" : "explore_icon", index: 1, selectedTab: $selectedTab)
                Spacer()
                TabBarItem(imageName: selectedTab == 2 ? "library_selected_icon" : "library_icon", index: 2, selectedTab: $selectedTab)
                Spacer()
            }
            .padding(.vertical, -30)
            .background(Color(.systemBackground))
            .frame(height: 65)
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TabBarItem: View {
    let imageName: String
    let index: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        Button(action: {
            selectedTab = index
        }) {
            VStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 40, height: 38)
            }
        }
    }
}

struct FirstView: View {
    var body: some View {
        Text("First View")
            .font(.largeTitle)
    }
}

struct SecondView: View {
    var body: some View {
        Text("Second View")
            .font(.largeTitle)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

