//
//  SecondCoordinator.swift
//  CoordinatorDemo
//
//  Created by Mac on 29/09/2018.
//  Copyright © 2018 touti. All rights reserved.
//

import UIKit


protocol BackToFirstViewControllerDelegate: class {
    
    func navigateBackToFirstPage(newOrderCoordinator: SecondCoordinator)
    
}

class SecondCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    unowned let navigationController:UINavigationController
    
    weak var delegate: BackToFirstViewControllerDelegate?
    
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let secondViewController : SecondViewController = SecondViewController()
        secondViewController.delegate = self
        self.navigationController.pushViewController(secondViewController, animated: true)
    }
}

extension SecondCoordinator : SecondViewControllerDelegate {
    func navigateToThirdPage() {
        let thirdViewController : ThirdViewController = ThirdViewController()
        thirdViewController.delegate = self
        self.navigationController.pushViewController(thirdViewController, animated: true)
    }
}


extension SecondCoordinator: ThirdViewControllerDelegate {
    
    func navigateToFirstPage(thirdViewController: ThirdViewController) {
        self.delegate?.navigateBackToFirstPage(newOrderCoordinator: self)
    }
}



