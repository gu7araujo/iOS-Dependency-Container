//
//  AnalyticsEventTracking.swift
//  DependencyContainerApp
//
//  Created by Gustavo Araujo Santos on 07/05/24.
//

import Foundation

protocol AnalyticsEventTracking {
    func trackEvent(_ name: String)
}
