//
//  SquishyButton.swift
//  SwiftSerinette
//
//  Created by Sam Tarakajian on 3/3/16.
//  Copyright © 2016 girlfriends. All rights reserved.
//

import EasyAnimation

class SquishyButton: UIButton {
    var isSquished = false;
    
    func squish() {
        if !isSquished {
            isSquished = true
            
            UIView.animateWithDuration(0.5, delay: 0.0,
                usingSpringWithDamping: 0.25,
                initialSpringVelocity: 0.0,
                options: [],
                animations: {
                    self.layer.transform = CATransform3DMakeScale(0.8, 0.8, 1.0)
                }, completion: nil)
        }
    }
    
    func unsquish() {
        if isSquished {
            isSquished = false
            
            UIView.animateWithDuration(0.5, delay: 0.0,
                usingSpringWithDamping: 0.25,
                initialSpringVelocity: 0.0,
                options: [],
                animations: {
                    self.layer.transform = CATransform3DMakeScale(1.0, 1.0, 1.0)
                }, completion: nil)
        }
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        self.squish()
    }
    
    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
        super.touchesCancelled(touches, withEvent: event)
        self.unsquish()
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesEnded(touches, withEvent: event)
        self.unsquish()
    }
}
