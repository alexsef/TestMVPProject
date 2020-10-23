//
//  ViewController.swift
//  TestMVPProject
//
//  Created by Алексей Селиванов on 23.10.2020.
//  Copyright © 2020 Alexey Selivanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var presenter: MainViewPresenterProtocol?

    @IBOutlet weak var greetingLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapButtonAction(_ sender: Any) {
        self.presenter?.showGreeting()
    }
}

extension ViewController: MainViewProtocol {
    func setGreeting(greeting: String) {
        self.greetingLabel?.text = greeting
    }
}

