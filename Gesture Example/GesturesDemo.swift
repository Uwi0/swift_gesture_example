import SwiftUI

struct GesturesDemo: View {
    var body: some View {
        NavigationStack {
            Form {
                MagnificationSectionView()
                DragSectionView()
                RotationSectionView()
                GeneralGesturesSectionView()
            }.navigationTitle("Gesture")
        }
        
    }
}

#Preview {
    GesturesDemo()
}
