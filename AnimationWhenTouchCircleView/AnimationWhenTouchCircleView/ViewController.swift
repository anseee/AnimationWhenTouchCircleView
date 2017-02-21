//
//  ViewController.swift
//  AnimationWhenTouchCircleView
//
//  Created by Mac on 2017. 2. 21..
//  Copyright © 2017년 partner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.circleButton.layer.masksToBounds = true
        self.circleButton.layer.cornerRadius = self.circleButton.frame.size.width / 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchButton(_ sender: Any) {
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
        scaleAnimation.duration = 0.2;
        scaleAnimation.autoreverses = true;
        scaleAnimation.fromValue = 1.0
        scaleAnimation.toValue = 0.9
        
        self.circleButton.layer.add(scaleAnimation, forKey: "transform.scale")
    }
    
}

