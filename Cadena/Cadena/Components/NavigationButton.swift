import SwiftUI

struct NavigationButton: View {
    var columnTitle: String
    var action: () -> Void
    var size: CGSize
    var cornerRadiusSize: CGFloat
    var imageName: String
    
    var body: some View {
        HStack {
            Text(columnTitle)
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .padding(.leading, 5)
            
            Spacer()
            Button(action: action) {
                Image(imageName)
                    .resizable()
                    .padding(.vertical)
                    .padding(.horizontal, 10)
                    .frame(maxWidth: size.width, maxHeight: size.height)
                    .cornerRadius(cornerRadiusSize)
            }
        }
        .padding(.horizontal, 10)
    }
}

struct NavigationButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButton(columnTitle: "Recently Played", action: {
            
        }, size: CGSize(width: 35, height: 60), cornerRadiusSize: 0, imageName: "ChevronRight")
    }
}
