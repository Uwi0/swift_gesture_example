import SwiftUI

struct GeneralGesturesSectionView: View {
    var body: some View {
        Section (content: {
            
            NavigationLink(
                #"General Gesture "Go Back""#,
                destination: {
                    //TODO: Add general gsture view
                }
            )
        }, header: {
            Text("General Gesture Demo")
        })
    }
}

#Preview {
    Form {
        GeneralGesturesSectionView()
    }
}
