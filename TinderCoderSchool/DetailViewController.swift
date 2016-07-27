//
//  DetailViewController.swift
//  TinderCoderSchool
//
//  Created by John Whisker on 7/25/16.
//  Copyright © 2016 coderschoolvn. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        print("taped")
        self.dismissViewControllerAnimated(true, completion: {})
    }
}
