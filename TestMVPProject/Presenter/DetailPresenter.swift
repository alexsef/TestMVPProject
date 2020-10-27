//
//  DetailPresenter.swift
//  TestMVPProject
//
//  Created by Алексей Селиванов on 27.10.2020.
//  Copyright © 2020 Alexey Selivanov. All rights reserved.
//

import Foundation

protocol DetailViewProtocol: class {
    func setComment(comment: Comment?)
}

protocol DetailViewPresenterProtocol: class {
    init(view: DetailViewProtocol, networkServise: NetworkServiceProtocol, comment: Comment?)
    func setComment()
}

class DetailPresenter: DetailViewPresenterProtocol {
    weak var view: DetailViewProtocol?
    let networkService: NetworkServiceProtocol!
    var comment: Comment?
    
    required init(view: DetailViewProtocol, networkServise: NetworkServiceProtocol, comment: Comment?) {
        self.view = view
        self.networkService = networkServise
        self.comment = comment
    }
    
    func setComment() {
        self.view?.setComment(comment: comment)
    }
    
    
}
