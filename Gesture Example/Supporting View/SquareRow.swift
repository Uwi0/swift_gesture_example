import SwiftUI

struct SquareRow: View {
    
    let colors: [Color]
    let dim: CGFloat
    let cornerRadius: CGFloat
    
    init(colors: [Color], dim: CGFloat = 50, cornerRadius: CGFloat = 5) {
        self.colors = colors
        self.dim = dim
        self.cornerRadius = cornerRadius
    }
    
    
    var body: some View {
        GridRow {
            ForEach(colors, id: \.self) { color in
                color
                    .frame(width: dim, height: dim)
                    .cornerRadius(cornerRadius)
            }
        }
    }
}

struct GradientBackground: View {
    
    let colors: [Color]
    let opacitiy: CGFloat
    
    init(colors: [Color], opacitiy: CGFloat) {
        self.colors = colors
        self.opacitiy = opacitiy
    }
    
    var body: some View {
        LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(opacitiy)
            .ignoresSafeArea()
    }
}

#Preview {
    ZStack {
        GradientBackground(colors: [.yellow, .indigo, .cyan, .green], opacitiy: 0.4)
        Grid {
            SquareRow(colors: [.red, .green, .blue])
        }
    }

}
