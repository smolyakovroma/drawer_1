
import UIKit

class DrawView: ShadowView {
    
    var isDrawing = false
    var lastPoint: CGPoint!
    var strokeColor: CGColor = UIColor.black.cgColor
    var strokes = [Stroke]()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !isDrawing else {
            return
        }
        
        isDrawing = true
        
        guard let touch = touches.first else {
            return
        }
        
        let currentPoint = touch.location(in: self)
        lastPoint = currentPoint
        print(currentPoint)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isDrawing else {
            return
        }
        
        guard let touch = touches.first else {
            return
        }
        
        let currentPoint = touch.location(in: self)
        let stroke = Stroke(startPoint: self.lastPoint, endPoint: currentPoint, color: self.strokeColor)
        strokes.append(stroke)
        lastPoint = currentPoint
        setNeedsDisplay()
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isDrawing else {
            return
        }
        
        isDrawing = false
        
        guard let touch = touches.first else {
            return
        }
        
        let currentPoint = touch.location(in: self)
        let stroke = Stroke(startPoint: lastPoint, endPoint: currentPoint, color: strokeColor)
        strokes.append(stroke)
        lastPoint = nil
         setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(20)
        context?.setLineCap(.round)
        for stroke in strokes {
            context?.beginPath()
            context?.move(to: stroke.startPoint)
            context?.addLine(to: stroke.endPoint)
            context?.setStrokeColor(stroke.color)
            context?.strokePath()
        }
    }
    
    func clear() {
        strokes = []
        setNeedsDisplay()
    }
    
    
}
