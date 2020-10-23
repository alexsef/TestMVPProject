//
//  ModuleBuilder.swift
//  TestMVPProject
//
//  Created by Алексей Селиванов on 23.10.2020.
//  Copyright © 2020 Alexey Selivanov. All rights reserved.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModulBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let person = Person(firstName: "Jim", lastName: "Kery")
        let view = ViewController()
        let presenter = MainPresenter(view: view, person: person)
        view.presenter = presenter
        return view
    }
}
