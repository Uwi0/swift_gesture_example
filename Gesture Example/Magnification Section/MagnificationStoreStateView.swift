import SwiftUI

struct MagnificationStoreStateView: View {
    @State private var changeScaleFactor: CGFloat = 1.0
    @Binding var scaleFactor: CGFloat
    
    var sumScaleFactor: CGFloat {
        changeScaleFactor + scaleFactor
    }

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                NiceTextView(
                    text: "Hello world",
                    bgColor: .black,
                    fgColor: .orange,
                    radius: 10
                )
                .scaleEffect(sumScaleFactor)
                .gesture(
                    MagnificationGesture()
                    .onChanged { value in
                        withAnimation(.spring) {
                            changeScaleFactor = value - 1
                        }
                    }
                    .onEnded{ value in
                        scaleFactor += changeScaleFactor
                        changeScaleFactor = 0
                    }
                    
                )
                Spacer()
            }
            .navigationTitle("Magnify and Store State")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MagnificationStoreStateView(scaleFactor: .constant(1))
}
