//
//  ViewControllerService.swift
//  MVVM-Coordinator-Combine-Dependancy_injection-Demo
//
//  Created by Rajeev Kulaiya on 11/12/24.
//

import Foundation

protocol ViewControllerServiceProtocol: AnyObject {
    func fetchData() async -> Model
}

final class ViewControllerService: ViewControllerServiceProtocol {

    func fetchData() async -> Model {
        try? await Task.sleep(nanoseconds: 3_000_000_000) // 3 seconds delay
        return Model(someId: 100, someMessage: "Rajeev")
    }
}
