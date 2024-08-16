import SwiftUI

struct DragGestureBounceBack: View {
    @State private var offset: CGSize = .zero
    
    var body: some View {
        NavigationStack {
            VStack {
                Squares()
                Spacer()
                NiceTextView(
                    text: "Hello world",
                    bgColor: .black.opacity(0.85),
                    fgColor: .orange.opacity(0.85),
                    radius: 10
                )
                .offset(offset)
                .gesture(
                    DragGesture()
                        .onChanged{ view in
                            offset = view.translation
                        }
                        .onEnded { view in
                            withAnimation(.spring()) {
                                offset = .zero
                            }
                        }
                )
                Spacer()
            }
            .navigationTitle("Drag and Bounce Back")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DragGestureBounceBack()
}
