//
//  TestAnalytics.swift
//  DependencyContainerAppTests
//
//  Created by Gustavo Araujo Santos on 22/05/24.
//

import Foundation

protocol TestAnalyticsProtocol {
    func trackEvent()
}

final class TestAnalytics: TestAnalyticsProtocol {
    
    private let networking: TestNetworkingProtocol
    
    init(networking: TestNetworkingProtocol) {
        self.networking = networking
    }
    
    func trackEvent() {
        networking.makeRequest()
    }
}
