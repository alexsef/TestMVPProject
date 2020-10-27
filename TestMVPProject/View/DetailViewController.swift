//
//  DetailViewController.swift
//  TestMVPProject
//
//  Created by Алексей Селиванов on 27.10.2020.
//  Copyright © 2020 Alexey Selivanov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var commentLabel: UILabel!
    var presenter: DetailViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setComment()
    }
}

extension DetailViewController: DetailViewProtocol {
    func setComment(comment: Comment?) {
        commentLabel.text = comment?.body
    }
    
    
}
