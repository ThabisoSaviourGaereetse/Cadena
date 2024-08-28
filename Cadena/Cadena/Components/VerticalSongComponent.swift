import SwiftUI

struct VerticalSongComponent: View {
    var imageName: String
    var songName: String
    var artistName: String
    var size: CGSize
    
    var body: some View {
        VStack {
            HStack {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(13)
                
                VStack(alignment: .leading) {
                    Text(songName)
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                        .frame(width: 145, height: 8)
                    
                    Text(artistName)
                        .font(.system(size: 13))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemGray))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
            }

        }
    }
}

struct VerticalSongComponent_Previews: PreviewProvider {
    static var previews: some View {
        VerticalSongComponent(imageName: "SnohAelegra", songName: "I Want You Around", artistName: "Snoh Aelegra", size: CGSize(width: 60, height: 60))
    }
}
