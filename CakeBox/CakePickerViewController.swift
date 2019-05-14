//
//  ViewController.swift
//  CakeBox
//
//  Created by Vineet Ramisetty on 5/13/19.
//  Copyright © 2019 Vineet Ramisetty, Krish Kalai. All rights reserved.
//

import UIKit

class CakePickerViewController: UIViewController {
    
    private var db: [[String]] = []
    private var pageIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        db = readPropertyList(bundleName: "Cakes")
        
        let title = UILabel()
        title.text = db[pageIndex][0]
        title.font = UIFont(name: "Avenir",
                            size: 24)
        title.sizeToFit()
        title.center = CGPoint(x: self.view.center.x,
                               y: 64)
       
        let cakeImage: UIImage = UIImage(named: db[pageIndex][1])!
        let cakeImageView = UIImageView(image: cakeImage)
        cakeImageView.frame = CGRect(x: 16,
                                     y: 128,
                                     width: self.view.bounds.width - 32,
                                     height: 233)
        
        let cakeDescription = UITextView()
        cakeDescription.text = db[pageIndex][2]
        cakeDescription.isEditable = false
        cakeDescription.font = UIFont(name: "Avenir",
                                      size: 16)
        cakeDescription.frame = CGRect.init(x: 16,
                                            y: 375,
                                            width: self.view.bounds.width - 32,
                                            height: 100)
        cakeDescription.sizeToFit()
        cakeDescription.textAlignment = .justified
        
        self.view.addSubview(title)
        self.view.addSubview(cakeImageView)
        self.view.addSubview(cakeDescription)
    }

    func readPropertyList(bundleName: String) -> [[String]] {
        var cakes: [[String]] = []
        if let URL = Bundle.main.url(forResource: bundleName, withExtension: "plist") {
            if let cakeFromPlist = NSArray(contentsOf: URL) as? [[String]] {
                cakes = cakeFromPlist
            }
        }
        
        return cakes
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("position \(touches.first!.location(in: self.view))")
        print("touches eneded")
    }
    
}

