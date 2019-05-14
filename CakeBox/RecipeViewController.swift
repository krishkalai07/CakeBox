//
//  RecipeViewController.swift
//  CakeBox
//
//  Created by Vineet Ramisetty on 5/13/19.
//  Copyright © 2019 Vineet Ramisetty, Krish Kalai. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let title = UILabel()
        title.text = "Recipe"
        title.font = UIFont(name: "Avenir", size: 24)
        title.sizeToFit()
        title.center = CGPoint(x: self.view.center.x,
                               y: 64)
        
        self.view.addSubview(title)
        
    }
    
}
