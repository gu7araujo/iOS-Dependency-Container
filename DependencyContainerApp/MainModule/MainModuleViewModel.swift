//
//  MainModuleViewModel.swift
//  DependencyContainerApp
//
//  Created by Gustavo Araujo Santos on 07/05/24.
//

final class MainModuleViewModel {
    
    private let onGoToDetailTap: () -> Void
    
    init(onGoToDetailTap: @escaping () -> Void) {
        self.onGoToDetailTap = onGoToDetailTap
    }
    
    func goToDetailTapped() {
        onGoToDetailTap()
    }
}
