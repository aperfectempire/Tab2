//
//  View.swift
//  Tab
//
//  Created by Edwin Vazquez on 2/1/15.
//  Copyright (c) 2015 com.aperfectempire. All rights reserved.
//

import UIKit

class View: UIView {
    let s: String;
    
    init(text: String) {
        // Initialization code
        s = text;
        super.init(frame: CGRectZero);
        backgroundColor = UIColor.redColor();
        
        //Call drawRect whenever orientation changes.
        contentMode = UIViewContentMode.Redraw;
    }
    
    required init(coder aDecoder: NSCoder) {
        s = "";
        super.init(coder: aDecoder);
    }
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func drawRect(rect: CGRect) {
        // Drawing code
        let applicationFrame: CGRect = UIScreen.mainScreen().applicationFrame;
        
        let string: String = "\(s)\n"
            + "applicationFrame = \(applicationFrame)\n"
            + "frame = \(frame)\n"
            + "bounds = \(bounds)\n";
        
        let m = min(bounds.size.width, bounds.size.height);
        let font: UIFont = UIFont.systemFontOfSize(m / 20);
        let attributes: [NSObject: AnyObject] = [NSFontAttributeName: font];
        string.drawAtPoint(applicationFrame.origin, withAttributes: attributes);
    }
    
    
}
