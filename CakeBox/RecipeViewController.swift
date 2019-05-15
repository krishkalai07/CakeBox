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
        
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        
        let cakeTitle = UILabel()
        cakeTitle.text = "Recipe"
        cakeTitle.font = UIFont(name: "Avenir", size: 24)
        cakeTitle.sizeToFit()
        cakeTitle.center = CGPoint(x: self.view.center.x,
                               y: 64)
        
        self.view.addSubview(cakeTitle)
        
    }
    
}
