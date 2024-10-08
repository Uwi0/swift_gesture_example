import SwiftUI

struct DragSectionView: View {
    @State private var endOffset: CGSize = .zero
    var body: some View {
        Section (content: {
            
            NavigationLink(
                #"Drag Gesture "Go Back""#,
                destination: {
                    DragGestureBounceBack()
                }
            )
            NavigationLink(
                #"Drag Gesture "Stay still""#,
                destination: {
                    DragGestureDemoView()
                }
            )
            NavigationLink(
                destination: {
                    DragGestureStoreStateView(endOffset: $endOffset)
                },
                label: {
                    VStack(alignment: .leading, content: {
                        Text("Drag Gesture")
                        Text("Store state").fontWeight(.thin)
                    })
                }
            )
        }, header: {
            Text("Drag Gesture Demo")
        })
    }
}

#Preview {
    Form {
        DragSectionView()
    }
}
