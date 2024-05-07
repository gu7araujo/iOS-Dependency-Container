//
//  DetailModuleViewModel.swift
//  DependencyContainerApp
//
//  Created by Gustavo Araujo Santos on 07/05/24.
//

final class DetailModuleViewModel {
    
    private let analyticsTracker: AnalyticsEventTracking
    private let networking: Networking
    
    init(analyticsTracker: AnalyticsEventTracking, networking: Networking) {
        self.analyticsTracker = analyticsTracker
        self.networking = networking
    }
    
}
