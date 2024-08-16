import SwiftUI

struct MagnificationSectionView: View {
    var body: some View {
        Section (content: {

            NavigationLink(
                #"Magnification Gesture "Go Back""#,
                destination: {
                    Text("Example 2")
                }
            )
            NavigationLink(
                #"Magnification Gesture "Stay still""#,
                destination: {
                    Text("Example 1")
                }
            )
            NavigationLink(
                destination: {
                    Text("Example 3")
                },
                label: {
                    VStack(alignment: .leading, content: {
                        Text("Magnifcation Gesture")
                        Text("Store state").fontWeight(.thin)
                    })
                }
            )
        }, header: {
            Text("Magnification Gesture Demo")
        })
    }
}

#Preview {
    Form{
        MagnificationSectionView()
    }
}
