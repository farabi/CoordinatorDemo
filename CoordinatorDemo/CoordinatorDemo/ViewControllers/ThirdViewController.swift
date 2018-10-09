//
//  ThirdViewController.swift
//  CoordinatorDemo
//
//  Created by Mac on 29/09/2018.
//  Copyright © 2018 touti. All rights reserved.
//

import UIKit

public protocol ThirdViewControllerDelegate: class {
    func navigateToFirstPage(thirdViewController: ThirdViewController)
}

public class ThirdViewController: UIViewController {

    public weak var delegate: ThirdViewControllerDelegate?
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        title = "ThirdViewController"
    }

    @IBAction func navigateToFirstPageAction(_ sender: Any) {
        self.delegate?.navigateToFirstPage(thirdViewController: self)
    }
}
