//
//  Model.swift
//  MVVM-Coordinator-Combine-Dependancy_injection-Demo
//
//  Created by Rajeev Kulaiya on 11/12/24.
//

import Foundation

struct Model {
    var someId: Int
    var someMessage: String

    static func mockModelData() -> Model {
        return Model(someId: 200, someMessage: "Mock Model Message")
    }
}
