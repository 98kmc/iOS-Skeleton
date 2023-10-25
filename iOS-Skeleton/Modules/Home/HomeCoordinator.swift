//
//  HomeCoordinator.swift
//  iOS-Skeleton
//
//  Created by Miguel on 24/10/2023.
//

import UIKit

class HomeCoordinator<R: AppRouter> {
    
    private let router: R
    
    init(router: R) {
        self.router = router
    }
}

extension HomeCoordinator: Coordinator {
    
    func start() {
    
        let vc = firstVC()
        router.navigationController.pushViewController(vc, animated: false)
    }
}

class firstVC : UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .blue
    }
}
