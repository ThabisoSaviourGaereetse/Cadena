import SwiftUI

struct ViewTitle: View {
    var titleText: String
    
    var body: some View {
        Text(titleText)
            .font(.largeTitle)
            .fontWeight(.semibold)
    }
}

struct ViewTitle_Previews: PreviewProvider {
    static var previews: some View {
        ViewTitle(titleText: "Listen Now")
    }
}
