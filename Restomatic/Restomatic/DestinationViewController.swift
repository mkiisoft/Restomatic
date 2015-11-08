//
//  DestinationViewController.swift
//  Restomatic
//
//  Created by Mariano Zorrilla on 11/5/15.
//  Copyright © 2015 Roamtouch. All rights reserved.
//

import UIKit

class DestinationViewController: UIViewController {
    
    var hola = [UIImage]()
    
    var texto:String!

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        label.text = texto
    }

    @IBAction func back(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
