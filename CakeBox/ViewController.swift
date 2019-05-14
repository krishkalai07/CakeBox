//
//  ViewController.swift
//  CakeBox
//
//  Created by Vineet Ramisetty on 5/13/19.
//  Copyright © 2019 Vineet Ramisetty, Krish Kalai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let title = UILabel()
        title.text = "Honorary Chocolate Cake"
        title.font = UIFont(name: "Avenir", size: 24)
        title.center = CGPoint(x: 160, y: 28)
        title.sizeToFit()
        
        self.view.addSubview(title)
        
    }


}

