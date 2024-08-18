import SwiftUI

struct RotationSectionView: View {
    @State private var rotation: Double = 0.0
    
    var body: some View {
        Section (content: {
            
            NavigationLink(
                #"Rotation Gesture "Go Back""#,
                destination: {
                    RotationGestureBounceBack()
                }
            )
            NavigationLink(
                #"Rotation Gesture "Stay still""#,
                destination: {
                    RotationGestureView()
                }
            )
            NavigationLink(
                destination: {
                    RotationGestureStoreStateView(rotation: $rotation)
                },
                label: {
                    VStack(alignment: .leading, content: {
                        Text("Rotation Gesture")
                        Text("Store state").fontWeight(.thin)
                    })
                }
            )
        }, header: {
            Text("Rotation Gesture Demo")
        })
    }
}

#Preview {
    Form {
        RotationSectionView()
    }
}
