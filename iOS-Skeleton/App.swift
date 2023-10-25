//
//  App.swift
//  iOS-Skeleton
//
//  Created by Miguel on 24/10/2023.
//

import UIKit

final class App {
    var navigationController = UINavigationController()
    private var coordinatorRegister: [AppTransition: Coordinator] = [:]
}

extension App: Coordinator {
    
    func start() {
        self.navigationController.navigationBar.tintColor = UIColor(named:"backgroundActived")
        process(route: .showHome)
    }
}

extension App: AppRouter {
    
    func exit() {
        // In this Router context - the only exit left is the main screen.
        // Logout - clean tokens - local cache - offline database if needed etc.
        navigationController.popToRootViewController(animated: true)
    }
    
    func process(route: AppTransition) {
        print("Processing route: \(route)")
        let coordinator = route.hasState ? coordinatorRegister[route] : route.coordinatorFor(router: self)
        coordinator?.start()
    }
}
