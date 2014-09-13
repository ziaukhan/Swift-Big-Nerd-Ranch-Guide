//
//  BNRHypnosisView.swift
//  Chap4
//


import UIKit

class BNRHypnosisView: UIView {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
        
        //All BNRHyponosisView starts with a clear background Color
        self.backgroundColor = UIColor.clearColor()
        
        var circleColor:UIColor = UIColor.lightGrayColor()
    }

    var circleColor:UIColor = UIColor.lightGrayColor()
    
    
    override func drawRect(rect: CGRect) {
        var bounds = self.bounds
        
        //figure out the center of the bounds rectangle
        var center = CGPoint()
        center.x = (bounds.origin.x + bounds.size.width) / 2.0
        center.y = (bounds.origin.y + bounds.size.height) / 2.0
        
        /*//The circle will be the largest that will fit in the view
        var radius:CGFloat = hypot(bounds.size.width, bounds.size.height)/4.0
        */
        
        var path = UIBezierPath()
    
        /*//Add an arc to the path at center, with radius of radius,
        //from 0 to 2*PI randian (a circle)
        var startAngle:CGFloat = 0.0
        path.addArcWithCenter(center, radius: radius, startAngle: startAngle, endAngle: Float(M_PI)*2.0, clockwise: true)
        */
        
        var maxRadius = hypot(bounds.size.width, bounds.size.height)/2.0
        
        for(var currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20){
            path.moveToPoint(CGPointMake(center.x + currentRadius, center.y))
            
            var startAngle:CGFloat = 0.0
            
            path.addArcWithCenter(center,
                radius:currentRadius, // Note this is currentRadius!
                startAngle: startAngle,
                endAngle: CGFloat(M_PI)*2.0, clockwise: true)
            
        }
        
        ///Congigure line width to 10 points   
        path.lineWidth = 10
        
        //Configure the drawing color to light gray
        self.circleColor.setStroke()
        
        //draw the line
        path.stroke()
        
        // --- END CHAPTER # 4 //
        
        
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        //get 3 random number b/w 0 and 1
        var red:CGFloat = CGFloat(Float(arc4random()) % 100.0) / 100.0
        var greenn:CGFloat = CGFloat(Float(arc4random()) % 100.0) / 100.0
        var blue:CGFloat = CGFloat(Float(arc4random()) % 100.0) / 100.0
        
        var randomColor = UIColor(red: red, green: greenn, blue: blue, alpha: 1.0)
        self.circleColor = randomColor
        self.setNeedsDisplay()
    }
    

}
