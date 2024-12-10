//
//  ViewController.swift
//  MVVM-Dependancy_Injection-Tests-Demo
//
//  Created by Rajeev Kulaiya on 11/12/24.
//

import UIKit

final class ViewController: UIViewController {

    var viewModel = ViewModel(services: ViewControllerService())

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.getModelInfo()
    }
}
