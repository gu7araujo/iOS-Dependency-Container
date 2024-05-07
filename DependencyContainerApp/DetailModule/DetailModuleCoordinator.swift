//
//  DetailModuleCoordinator.swift
//  DependencyContainerApp
//
//  Created by Gustavo Araujo Santos on 07/05/24.
//

import UIKit

final class DetailModuleCoordinator {
    
    func makeView() -> UIViewController {
        let viewModel = DetailModuleViewModel(analyticsTracker: AnalyticsEventTracker(),
                                              networking: NetworkService.shared)
        let viewController = DetailModuleViewController(viewModel: viewModel)
        return viewController
    }
}
