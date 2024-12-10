//
//  ViewModel.swift
//  MVVM-Coordinator-Combine-Dependancy_injection-Demo
//
//  Created by Rajeev Kulaiya on 11/12/24.
//

import Foundation

final class ViewModel {

    var model: Model?
    private var services: ViewControllerServiceProtocol!

    init(services: ViewControllerServiceProtocol) {
        self.services = services
    }

    func getModelInfo() {
        Task {
            self.model = await services.fetchData()
        }
    }
}
