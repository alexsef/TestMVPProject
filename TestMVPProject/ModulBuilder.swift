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
    static func createDetailModule(comment: Comment?) -> UIViewController
}

class ModulBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let view = ViewController()
        let networkService = NetworkService()
        let presenter = MainPresenter(view: view, networkService: networkService)
        view.presenter = presenter
        return view
    }
    
    static func createDetailModule(comment: Comment?) -> UIViewController {
        let view = DetailViewController()
        let networkService = NetworkService()
        let presenter = DetailPresenter(view: view, networkServise: networkService, comment: comment)
        view.presenter = presenter
        return view
    }
}
