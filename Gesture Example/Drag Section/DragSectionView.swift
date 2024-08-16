import SwiftUI

struct DragSectionView: View {
    @State private var scaleFactor: CGFloat = 1.0
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
                    //TODO: Drag gesture store state
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
