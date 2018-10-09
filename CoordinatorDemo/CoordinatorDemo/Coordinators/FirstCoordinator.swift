//
//  FirstCoordinator.swift
//  CoordinatorDemo
//
//  Created by Saad El Oulladi on 29/09/2018.
//  Copyright © 2018 touti. All rights reserved.
//

import UIKit

class FirstCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    unowned let navigationController:UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let firstViewController : FirstViewController = FirstViewController()
        firstViewController.delegate = self
        self.navigationController.viewControllers = [firstViewController]
    }
}

extension FirstCoordinator: FirstViewControllerDelegate {

    // Navigate to next page
    func navigateToNextPage() {
       let secondCoordinator = SecondCoordinator(navigationController: navigationController)
       secondCoordinator.delegate = self
       childCoordinators.append(secondCoordinator)
       secondCoordinator.start()
    }
}

extension FirstCoordinator: BackToFirstViewControllerDelegate {
    
    // Back from third page
    func navigateBackToFirstPage(newOrderCoordinator: SecondCoordinator) {
        navigationController.popToRootViewController(animated: true)
        childCoordinators.removeLast()
    }
}


