//
//  ViewModelTests.swift
//  MVVM-Coordinator-Combine-Dependancy_injection-DemoTests
//
//  Created by Rajeev Kulaiya on 11/12/24.
//

import Foundation
import XCTest
@testable import MVVM_Dependancy_Injection_Tests_Demo

final class ViewModelTests: XCTestCase {
    
    private var sut: ViewModel!
    private var mockViewControllerServices: MockViewControllerServices!

    override func setUp() {
        mockViewControllerServices = MockViewControllerServices()
        sut = ViewModel(services: mockViewControllerServices)
    }

    override func tearDown() {
        super.tearDown()
        mockViewControllerServices = nil
        sut = nil
    }

    func testAPICall() async {
        await sut.getModelInfo()
        XCTAssertEqual(200, sut.model?.someId)
        XCTAssertEqual("Mock Model Message", sut.model?.someMessage)
    }
}

fileprivate final class MockViewControllerServices: ViewControllerServiceProtocol {

    func fetchData() async -> Model {
        return Model.mockModelData()
    }
}
