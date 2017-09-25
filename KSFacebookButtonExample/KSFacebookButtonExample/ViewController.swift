//
//  ViewController.swift
//  KSFacebookButtonExample
//
//  Created by Lee Kah Seng on 17/05/2017.
//  Copyright © 2017 Lee Kah Seng. All rights reserved.
//

import UIKit
import KSFacebookButton

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create custom Facebook button at center of the screen
        let facebookButton = KSFacebookButton(frame: CGRect(x: 0, y: 0, width: 140, height: 55))
        facebookButton.center = view.center
        facebookButton.setTitle("Tap me!", for: .normal)
        facebookButton.addTarget(self, action: #selector(facebookButtonDidTapped(sender:)), for: .touchUpInside)
        view.addSubview(facebookButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @objc func facebookButtonDidTapped(sender: KSFacebookButton) {
        print("Facebook button tapped!")
    }
}

