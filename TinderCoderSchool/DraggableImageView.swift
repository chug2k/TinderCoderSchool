//
//  DraggableImageView.swift
//  TinderCoderSchool
//
//  Created by Charles Lee on 7/25/16.
//  Copyright © 2016 coderschoolvn. All rights reserved.
//

import UIKit

class DraggableImageView: UIView {

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet var contentView: UIView!
    var initCenter: CGPoint!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        let nib = UINib(nibName: "DraggableImageView", bundle: nil)
        nib.instantiateWithOwner(self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
        
        initCenter = imageView.center
        
    }

    @IBAction func onDrag(sender: UIPanGestureRecognizer) {
        let translation = sender.translationInView(self.superview!)
        imageView.center = CGPointMake(initCenter.x + translation.x, initCenter.y + translation.y)
        let divide = translation.x / 160
        imageView.alpha = CGFloat.init(1-divide)
        imageView.transform = CGAffineTransformMakeRotation(CGFloat.init(M_PI/4)*divide)
        if abs(translation.x) > (160/2){
            imageView.alpha = CGFloat.init(0)
        }
        if sender.state == .Ended {
          //imageView.alpha = CGFloat.init(1)
            imageView.center = initCenter!
            imageView.transform = CGAffineTransformMakeRotation(0)
        }
        
    }
}
