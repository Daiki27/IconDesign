//
//  ViewController.swift
//  Demo
//
//  Created by 樋口大樹 on 2020/07/24.
//  Copyright © 2020 樋口大樹. All rights reserved.
//

import UIKit
import IconDesign

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = Camera_Design(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        button.backgroundColor = UIColor.lightGray
        view.addSubview(button)
    }
}

