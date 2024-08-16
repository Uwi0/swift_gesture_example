import SwiftUI

struct MagnificationView: View {
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
                    
                )
                Spacer()
            }
            .navigationTitle("Magnify and Stay still")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MagnificationView()
}
