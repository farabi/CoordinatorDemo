//
//  ThirdViewController.swift
//  CoordinatorDemo
//
//  Created by Saad El Oulladi on 29/09/2018.
//  Copyright © 2018 touti. All rights reserved.
//

import UIKit

public class ThirdViewController: UIViewController {

    public weak var delegate: SecondViewControllerDelegate?
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        title = "ThirdViewController"
    }

    @IBAction func navigateToFirstPageAction(_ sender: Any) {
        self.delegate?.navigateToFirstPage()
    }
}
