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
        self.view.backgroundColor = UIColor.white
        let title = UILabel()
        title.text = "Honorary Chocolate Cake"
        title.font = UIFont(name: "Avenir", size: 24)
        title.sizeToFit()
        title.center = CGPoint(x: self.view.center.x,
                               y: 64)
       
        let cakeImage = UIImageView(image: UIImage(named: "Honorary Chocolate Cake"))
        cakeImage.frame = CGRect(x: 16, y: 128, width: self.view.bounds.width - 32, height: 233)
        print(self.view.bounds.width)
        
        let cakeDescription = UITextView()
        cakeDescription.text = "This is an Honorary Chocolate Cake to celebrate the making of this app. This cake is super delicious and is hehehehe hohohohoho who whow hwoooo whooo he hoow hoe how ehuwh nene enene enene nene nean ean ean enen ytuijis sdof odhfgo jsd ajd fdsiugous fhudshofuhou gusdfu uu dduduc nsadagaz aza fhu sh si aii oauh  asdfjkl; "
        cakeDescription.font = UIFont(name: "Avenir", size: 16)
        cakeDescription.frame = CGRect.init(x: 16, y: 375, width: self.view.bounds.width - 32, height: 100)
        cakeDescription.sizeToFit()
        cakeDescription.textAlignment = .justified
//        cakeDescription.sizeToFit()
        //cakeDescription.center = CGPoint(x: self.view.center.x,
                                //         y: 450)
        
        self.view.addSubview(title)
        self.view.addSubview(cakeImage)
        self.view.addSubview(cakeDescription)
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches began \(touches.count)");
        print("position \(touches.first!.location(in: self.view))")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches moved \(touches.count)");
        print("position \(touches.first!.location(in: self.view))")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //print("position \(touches.first!.location(in: self.view))")
        //print("touches eneded")
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches cancelled")
    }
}

