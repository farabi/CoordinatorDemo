//
//  FirstViewController.swift
//  CoordinatorDemo
//
//  Created by Saad El Oulladi on 29/09/2018.
//  Copyright © 2018 touti. All rights reserved.
//

import UIKit

public protocol FirstViewControllerDelegate: class {
    func navigateToNextPage()
}

class FirstViewController: UIViewController {

    public weak var delegate: FirstViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "FirstViewController"
        
    }
    
    @IBAction func goToSecondPageAction(_ sender: Any) {
        self.delegate?.navigateToNextPage()
    }
}
