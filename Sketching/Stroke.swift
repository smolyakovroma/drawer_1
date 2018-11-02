
import UIKit

struct Stroke {
    let startPoint: CGPoint
    let endPoint: CGPoint
    let color: CGColor
    init(startPoint: CGPoint, endPoint: CGPoint, color: CGColor) {
        self.startPoint = startPoint
        self.endPoint = endPoint
        self.color = color
    }
}
