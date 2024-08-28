import SwiftUI

struct SongComponent: View {
    var imageName: String
    var songName: String
    var artistName: String
    var size: CGSize
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: size.width, maxHeight: size.height)
                .cornerRadius(16)
                .shadow(color: Color(.black).opacity(0.6), radius: 3, x: 2, y: 2)
                .padding(5)
            
            Text(songName)
                .font(.system(size: 14))
                .fontWeight(.semibold)
                .frame(width: 145, height: 8)
            
            Text(artistName)
                .font(.system(size: 11))
                .fontWeight(.semibold)
                .frame(width: 145, height: 8)
                .padding(.vertical, 2)
                .foregroundColor(Color(.systemGray))
        }
    }
}

struct SongComponent_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
