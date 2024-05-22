//
//  DependencyContainerTests.swift
//  DependencyContainerAppTests
//
//  Created by Gustavo Araujo Santos on 22/05/24.
//

import XCTest
@testable import DependencyContainerApp

final class DependencyContainerTests: XCTestCase {

    func test_single_instance_registration() {
        let myInstance = SingleInstanceDependency()
        DependencyContainer.shared.register(type: .singleInstance(myInstance), for: SingleInstanceDependencyProtocol.self)
        
        let resolve = DependencyContainer.shared.resolve(type: .singleInstance, for: SingleInstanceDependencyProtocol.self)
        
        XCTAssertTrue(myInstance === resolve)
    }
    
    func test_closure_registration() {
        let myInstanceProvidingClosure: () -> ClosureDependencyProtocol = {
            ClosureDependency()
        }
        DependencyContainer.shared.register(type: .closureBased(myInstanceProvidingClosure), for: ClosureDependencyProtocol.self)
        
        let _ = DependencyContainer.shared.resolve(type: .closureBased, for: ClosureDependencyProtocol.self)
    }
    
    func test_resolving_another_dependency_within_closure_before_returning_from_closure() {
        let networkingInstance = TestNetworking()
        DependencyContainer.shared.register(type: .singleInstance(networkingInstance), for: TestNetworkingProtocol.self)
        
        let analyticsProvidingClosure: () -> TestAnalyticsProtocol = {
            let networking = DependencyContainer.shared.resolve(type: .singleInstance, for: TestNetworkingProtocol.self)
            return TestAnalytics(networking: networking)
        }
        DependencyContainer.shared.register(type: .closureBased(analyticsProvidingClosure), for: TestAnalyticsProtocol.self)
        
        let _ = DependencyContainer.shared.resolve(type: .closureBased, for: TestAnalyticsProtocol.self)
    }

}
