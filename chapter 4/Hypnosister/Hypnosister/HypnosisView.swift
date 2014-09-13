//
//  HypnosisView.swift
//  Hypnosister
//


import UIKit

class HypnosisView: UIView {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clearColor()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
        // Initialization code
    }

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
        let bounds = self.bounds
        let center = CGPoint(x: bounds.origin.x  + bounds.size.width / 2.0, y: bounds.origin.y + bounds.size.width / 2)
        let maxRadius = (min(bounds.size.width, bounds.size.height) / 2.0)
        var path = UIBezierPath()
        //path.addArcWithCenter(center, radius, 0.0, (M_PI * 2), true)
        for(var currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20){
            path.moveToPoint(CGPointMake(center.x + currentRadius, center.y))
            path.addArcWithCenter(center, radius: currentRadius, startAngle: 0.0, endAngle: CGFloat(M_PI * 2.0), clockwise: true)
        }
        path.lineWidth = 10
        UIColor.lightGrayColor().setStroke()
        path.stroke()
        var img = UIImage(named: "logo.png")
        img.drawInRect(bounds)
        //var text = "By Zia Khan"
        //text.drawInRect(bounds, withAttributes: Dictionary())
        
    }
    
    
}
