import SwiftUI

struct GeneralGesturesSectionView: View {
    var body: some View {
        Section (content: {
            
            NavigationLink(
                #"General Gesture "Go Back""#,
                destination: {
                    AllGesturesDemoView()
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
