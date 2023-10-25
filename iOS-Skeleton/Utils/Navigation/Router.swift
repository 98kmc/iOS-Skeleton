//
//  Router.swift
//  iOS-Skeleton
//
//  Created by Miguel on 24/10/2023.
//

import UIKit

protocol Router: AnyObject {
    associatedtype Route
    func exit()
    func process(route: Route)
}

protocol AppRouter: Router where Route == AppTransition {
    var navigationController: UINavigationController { get set }
}

