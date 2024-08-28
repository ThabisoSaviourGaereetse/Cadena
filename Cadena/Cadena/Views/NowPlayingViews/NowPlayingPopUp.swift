import SwiftUI

struct NowPlayingPopUp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 17)
            .fill(Color(.systemBackground))
            .frame(maxWidth: 380, maxHeight: 72)
            .frame(minWidth: 320, minHeight: 72)
            .shadow(color: Color(.black).opacity(0.6), radius: 3, x: 2, y: 2)
            .overlay(
                VStack {
                    HStack {
                        Image("SnohAelegra")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                            .cornerRadius(13)
                        
                        VStack(alignment: .leading) {
                            Text("I Want You Around")
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                                .frame(width: 145, height: 8)
                            
                            Text("Snoh Aelegra")
                                .font(.system(size: 13))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(.systemGray))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        CustomButton(action: {
                            
                        }, size: CGSize(width: 25, height: 23), cornerRadiusSize: 0, imageName: "heart_icon")
                        .padding(.trailing, 6)
                        
                        CustomButton(action: {
                            
                        }, size: CGSize(width: 40, height: 40), cornerRadiusSize: 0, imageName: "gradient_play_icon")
                        
                        CustomButton(action: {
                            
                        }, size: CGSize(width: 25, height: 28), cornerRadiusSize: 0, imageName: "forward_end_icon")
                        .padding(.trailing, 8)
                        
                    }
                    .padding(.horizontal, 6)
                }
            )
        
    }
}

struct NowPlayingPopUp_Previews: PreviewProvider {
    static var previews: some View {
        NowPlayingPopUp()
    }
}
