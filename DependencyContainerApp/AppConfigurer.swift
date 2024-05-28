//
//  AppConfigurer.swift
//  DependencyContainerApp
//
//  Created by Gustavo Araujo Santos on 28/05/24.
//

import Foundation

enum AppConfigurer {
    
    private static var didConfigureDependencies = false
    
    static func configureDependencies() {
        guard didConfigureDependencies == false else {
            assertionFailure("The dependencies should have only been configured once.")
            return
        }
        didConfigureDependencies = true
        
        DependencyContainer.shared.register(type: .singleInstance(NetworkService.shared), for: Networking.self)
        DependencyContainer.shared.register(type: .closureBased({
            AnalyticsEventTracker()
        }), for: AnalyticsEventTracking.self)
    }
}
