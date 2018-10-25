//
//  SecondViewController.swift
//  CoordinatorDemo
//
//  Created by Saad El Oulladi on 29/09/2018.
//  Copyright © 2018 touti. All rights reserved.
//

import UIKit

public protocol SecondViewControllerDelegate: class {
    func navigateToFirstPage()
    func navigateToThirdPage()
}

class SecondViewController: UIViewController {
    
    public weak var delegate: SecondViewControllerDelegate?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "SecondViewController"
        
        // Use custom back button to pass through coordinator.
        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(navigateBackToFirstpage))
        self.navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func navigateBackToFirstpage() {
        self.delegate?.navigateToFirstPage()
    }
    
    @IBAction func navigateToThirdPageAction(_ sender: Any) {
        self.delegate?.navigateToThirdPage()
    }
}
