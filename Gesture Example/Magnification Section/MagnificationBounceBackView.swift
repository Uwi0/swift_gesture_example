import SwiftUI

struct MagnificationBounceBackView: View {
    @State private var scaleFactor: CGFloat = 1.0
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
                .scaleEffect(scaleFactor)
                .gesture(
                    MagnificationGesture()
                    .onChanged { value in 
                        withAnimation(.spring) {
                            scaleFactor = value
                        }
                    }
                    .onEnded { value in
                        withAnimation(.spring()) {
                            scaleFactor = 1.0
                        }
                    }
                )
                Spacer()
            }
            .navigationTitle("Magnify and Bounce Back")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MagnificationBounceBackView()
}
