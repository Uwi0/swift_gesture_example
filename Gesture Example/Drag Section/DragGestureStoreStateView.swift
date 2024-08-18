import SwiftUI

struct DragGestureStoreStateView: View {
    @State private var currentOffset: CGSize = .zero
    @Binding var endOffset: CGSize
    
    private var offset: CGSize {
        CGSize(
            width: currentOffset.width + endOffset.width,
            height: currentOffset.height + endOffset.height
        )
    }
    
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
                .offset(endOffset)
                .gesture(
                    DragGesture()
                        .onChanged{ view in
                            withAnimation(.spring) {
                                currentOffset = view.translation
                            }
                        }.onEnded { _ in
                            withAnimation(.spring) {
                                endOffset = CGSize(
                                    width: currentOffset.width + endOffset.width,
                                    height: currentOffset.height + endOffset.height
                                )
                                currentOffset = .zero
                            }
                        }
                )
                .onTapGesture {
                    endOffset = .zero
                    currentOffset = .zero
                }
                Spacer()
            }
            .navigationTitle("Drag and Store state")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DragGestureStoreStateView(endOffset: .constant(.zero))
}
