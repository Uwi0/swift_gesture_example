import SwiftUI

struct RotationSectionView: View {
    @State private var endOffset: CGSize = .zero
    var body: some View {
        Section (content: {
            
            NavigationLink(
                #"Rotation Gesture "Go Back""#,
                destination: {
                    //TODO: Add rotation gesture and go back
                }
            )
            NavigationLink(
                #"Rotation Gesture "Stay still""#,
                destination: {
                    //TODO: Add rotation gesture and stay still
                }
            )
            NavigationLink(
                destination: {
                    //TODO: add rotation gesture and store state
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
