import SwiftUI

struct GesturesDemo: View {
    var body: some View {
        NavigationStack {
            Form {
                MagnificationSectionView()
                DragSectionView()
                Text("Rotation !")
                Text("General !")
            }.navigationTitle("Gesture")
        }
        
    }
}

#Preview {
    GesturesDemo()
}
