//
//  ViewController.swift
//  Restomatic
//
//  Created by Mariano Zorrilla on 10/30/15.
//  Copyright © 2015 Roamtouch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mButtonLogin  : UIButton!
    @IBOutlet weak var mLabelTitle   : UILabel!
    @IBOutlet weak var mTopConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mButtonLogin.backgroundColor    = UIColor.clearColor()
        mButtonLogin.layer.cornerRadius = 15
        mButtonLogin.layer.borderWidth  = 2.5
        mButtonLogin.layer.borderColor  = UIColor.whiteColor().CGColor
        
        mLabelTitle.font = UIFont(name: "DJBCoffeeShoppeEspresso", size: fontSize())
        
        print(UIScreen.mainScreen().bounds.size.height)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "mysegue" {
            
        }
    }
    
    func fontSize () -> CGFloat {
        
        var size:CGFloat = 30.0
        
        if UIScreen.mainScreen().bounds.size.height == 736 {
            size = 40.0
            mTopConstraint.constant = 0
        } else if UIScreen.mainScreen().bounds.size.height == 1024 {
            size = 60.0
        } else {
            mTopConstraint.constant = 0
        }
        
        return size
    }
}

