import SwiftUI

struct NiceTextView: View {
    let text: String
    let bgColor: Color
    let fgColor: Color
    let radius: CGFloat
    
    var body: some View {
        Text("Hello world")
            .font(.title)
            .fontWeight(.semibold)
            .foregroundStyle(fgColor)
            .padding()
            .background(bgColor)
            .cornerRadius(radius)
    }
}

struct NiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        NiceTextView(text: "hello", bgColor: .black, fgColor: .orange, radius: 10)
    }
}
