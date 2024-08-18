
import SwiftUI

struct RotationGestureStoreStateView: View {
    @Binding var rotation: Double
    @State private var currentRotation: Double = 0.0
    
    var totalRotation: Double {
        currentRotation + rotation
    }
    
    var body: some View {
        NavigationStack {
            NiceTextView(
                text: "Hello World",
                bgColor: .black,
                fgColor: .orange,
                radius: 10
            )
            .rotationEffect(Angle(degrees: totalRotation))
            .gesture(RotationGesture()
                .onChanged { value in
                    currentRotation = value.degrees
                }.onEnded{ _ in
                    withAnimation(.spring){
                        rotation += currentRotation
                        currentRotation = 0
                    }
                })
            .onTapGesture {
                withAnimation(.spring){
                    rotation = 0
                    currentRotation = 0
                }
            }
            .navigationTitle("Rotation Demo Save State")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RotationGestureStoreStateView(rotation: .constant(0))
}
