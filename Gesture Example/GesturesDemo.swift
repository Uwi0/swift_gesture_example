import SwiftUI

struct GesturesDemo: View {
    var body: some View {
        NavigationStack {
            Form {
                MagnificationSectionView()
                Text("Drag !")
                Text("Rotation !")
                Text("General !")
            }.navigationTitle("Gesture")
        }
        
    }
}

#Preview {
    GesturesDemo()
}
