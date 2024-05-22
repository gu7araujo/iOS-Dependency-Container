//
//  SingleInstanceDependency.swift
//  DependencyContainerAppTests
//
//  Created by Gustavo Araujo Santos on 22/05/24.
//

import Foundation

protocol SingleInstanceDependencyProtocol: AnyObject {
    func singleInstanceMethod()
}

final class SingleInstanceDependency: SingleInstanceDependencyProtocol {
    func singleInstanceMethod() {
        
    }
}
