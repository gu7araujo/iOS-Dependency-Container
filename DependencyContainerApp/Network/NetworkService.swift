//
//  NetworkService.swift
//  DependencyContainerApp
//
//  Created by Gustavo Araujo Santos on 07/05/24.
//

import Foundation

final class NetworkService: Networking {

    // Singleton
    static let shared = NetworkService()

    private init() {
        
    }

    func makeNetworkRequest(endpoint: String) {
        // Execute the network request
    }
}
