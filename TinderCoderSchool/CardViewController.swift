//
//  ViewController.swift
//  TinderCoderSchool
//
//  Created by Charles Lee on 7/25/16.
//  Copyright © 2016 coderschoolvn. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    
    var initCenter: CGPoint?
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func onDrag(sender: UIPanGestureRecognizer) {
        let translation = sender.translationInView(view)
        imageView.center = CGPointMake(initCenter!.x+translation.x, initCenter!.y+translation.y)
        if sender.state == .Ended {
            imageView.center = initCenter!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initCenter = imageView.center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

