import SwiftUI

struct CustomButton: View {
    var action: () -> Void
    var size: CGSize
    var cornerRadiusSize: CGFloat
    var imageName: String
    
    var body: some View {
        Button(action: action) {
            Image(imageName)
                .resizable()
                .frame(maxWidth: size.width, maxHeight: size.height)
                .cornerRadius(cornerRadiusSize)
        }
    }
}
