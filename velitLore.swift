import SwiftUI

struct BorderedCaptionModifier: ViewModifier {
    var caption: String
    var borderColor: Color = .black
    var borderWidth: CGFloat = 1.0
    
    func body(content: Content) -> some View {
        VStack {
            content
                .border(borderColor, width: borderWidth)
            Text(caption)
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
}

extension View {
    func borderedCaption(_ caption: String, borderColor: Color = .black, borderWidth: CGFloat = 1.0) -> some View {
        self.modifier(BorderedCaptionModifier(caption: caption, borderColor: borderColor, borderWidth: borderWidth))
    }
}
