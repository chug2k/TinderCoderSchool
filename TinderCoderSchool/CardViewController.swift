//
//  ViewController.swift
//  TinderCoderSchool
//
//  Created by Charles Lee on 7/25/16.
//  Copyright © 2016 coderschoolvn. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    
    @IBOutlet weak var imageView: DraggableImageView!
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let myModalViewController = storyboard.instantiateViewControllerWithIdentifier("detailView")
        myModalViewController.modalPresentationStyle = UIModalPresentationStyle.FullScreen
        myModalViewController.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        self.presentViewController(myModalViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

