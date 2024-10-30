protocol Drawable {
    func draw()
}

extension Drawable {
    func draw() {
        print("Drawing...")
    }
}

struct Circle: Drawable {
    // No need to implement draw() because it has a default implementation
}

let circle = Circle()
circle.draw() // Output: "Drawing..."
