//
//  AppTransition.swift
//  iOS-Skeleton
//
//  Created by Miguel on 24/10/2023.
//

import Foundation

enum AppTransition {
    
    case showHome
    
    
    var hasState: Bool {
        // If some transitions need to have state - perform case match logic here
        // Generally prefer stateless
        false
    }
    
    func coordinatorFor<R: AppRouter>(router: R) -> Coordinator {
        switch self {
            case .showHome: return HomeCoordinator(router: router)
        }
    }
}

extension AppTransition: Hashable {
    
    var identifier: String {
        switch self {
        case .showHome: return "showHome"
        }
    }
    
    static func == (lhs: AppTransition, rhs: AppTransition) -> Bool {
        lhs.identifier == rhs.identifier
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
}
