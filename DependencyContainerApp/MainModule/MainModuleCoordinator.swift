//
//  MainModuleCoordinator.swift
//  DependencyContainerApp
//
//  Created by Gustavo Araujo Santos on 07/05/24.
//

import UIKit

final class MainModuleCoordinator {
    
    private weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = makeView()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func makeView() -> UIViewController {
        let analytics = DependencyContainer.shared.resolve(type: .closureBased, for: AnalyticsEventTracking.self)
        let networking = DependencyContainer.shared.resolve(type: .singleInstance, for: Networking.self)
        let viewModel = MainModuleViewModel(analyticsTracker: analytics,
                                            networking: networking,
                                            onGoToDetailTap: pushDetail)
        let viewController = MainModuleViewcontroller(viewModel: viewModel)
        return viewController
    }
    
    private func pushDetail() {
        let viewController = DetailModuleCoordinator().makeView()
        navigationController?.present(viewController, animated: true)
    }
}
