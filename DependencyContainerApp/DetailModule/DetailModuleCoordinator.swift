//
//  DetailModuleCoordinator.swift
//  DependencyContainerApp
//
//  Created by Gustavo Araujo Santos on 07/05/24.
//

import UIKit

final class DetailModuleCoordinator {
    
    func makeView() -> UIViewController {
        let analytics = DependencyContainer.shared.resolve(type: .closureBased, for: AnalyticsEventTracking.self)
        let networking = DependencyContainer.shared.resolve(type: .singleInstance, for: Networking.self)
        let viewModel = DetailModuleViewModel(analyticsTracker: analytics,
                                              networking: networking)
        let viewController = DetailModuleViewController(viewModel: viewModel)
        return viewController
    }
}
