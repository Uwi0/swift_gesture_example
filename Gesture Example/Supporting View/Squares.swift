import SwiftUI

struct Squares: View {
    
    let opacity: CGFloat
    
    init(opacity: CGFloat = 0.85) {
        self.opacity = opacity
    }
    
    var body: some View {
        Grid {
            SquareRow(colors: [.red, .green, .blue])
            SquareRow(colors: [.yellow, .indigo, .cyan])
            SquareRow(colors: [.brown, .orange, .gray])
        }
        .opacity(opacity)
    }
}

#Preview {
    Squares()
}
