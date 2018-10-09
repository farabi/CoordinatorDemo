//
//  SecondViewController.swift
//  CoordinatorDemo
//
//  Created by Mac on 29/09/2018.
//  Copyright © 2018 touti. All rights reserved.
//

import UIKit

public protocol SecondViewControllerDelegate: class {
    func navigateToThirdPage()
}

class SecondViewController: UIViewController {
    
    public weak var delegate: SecondViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "SecondViewController"
    }
    
    @IBAction func navigateToThirdPageAction(_ sender: Any) {
        self.delegate?.navigateToThirdPage()
    }
}
