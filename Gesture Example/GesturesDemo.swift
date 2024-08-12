import SwiftUI

struct GesturesDemo: View {
    var body: some View {
        Form {
            Text("Magnification !")
            Text("Drag !")
            Text("Rotation !")
            Text("General !")
        }
        .padding()
    }
}

#Preview {
    GesturesDemo()
}
