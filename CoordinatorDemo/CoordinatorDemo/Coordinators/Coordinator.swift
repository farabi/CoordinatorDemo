//
//  Coordinator.swift
//  CoordinatorDemo
//
//  Created by Mac on 29/09/2018.
//  Copyright © 2018 touti. All rights reserved.
//

import UIKit

public protocol Coordinator : class {

    var childCoordinators: [Coordinator] { get set }

    init(navigationController:UINavigationController)
    
    func start()
}
