//
//  RecipeViewController.swift
//  CakeBox
//
//  Created by Vineet Ramisetty on 5/13/19.
//  Copyright © 2019 Vineet Ramisetty, Krish Kalai. All rights reserved.
//

import UIKit

class RecipieViewController: UIViewController {
    var cakeName: String!
    var image: UIImage!
    var ingredients: String!
    var recipie: String!
    
    init(cakeName: String, imageName: String, ingredients: String, recipie: String){
        super.init(nibName: nil, bundle: nil)
        self.cakeName = cakeName
        self.image = UIImage(named: imageName)!
        self.ingredients = ingredients
        self.recipie = recipie
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        
        let cakeTitle = UILabel()
        cakeTitle.text = cakeName
        cakeTitle.font = UIFont(name: "Avenir", size: 24)
        cakeTitle.sizeToFit()
        cakeTitle.center = CGPoint(x: self.view.center.x,
                               y: 64)
        
        let cakeImageView = UIImageView(image: image)
        cakeImageView.frame = CGRect(x: 16,
                                     y: 128,
                                     width: self.view.bounds.width - 32,
                                     height: 233)
        
        let ingredientView = UITextView()
        ingredientView.frame = CGRect.init(x: 16,
                                           y: 375,
                                           width: self.view.bounds.width - 32,
                                           height: 100)
        ingredientView.text = ingredients
        
        let recipieView = UITextView()
        recipieView.frame = CGRect.init(x: 16,
                                           y: 500,
                                           width: self.view.bounds.width - 32,
                                           height: 100)
        recipieView.text = recipie
        
        scrollView.addSubview(cakeTitle)
        scrollView.addSubview(cakeImageView)
        scrollView.addSubview(ingredientView)
        scrollView.addSubview(recipieView)
        self.view.addSubview(scrollView)
        
    }
    
}
