//
//  ProfileBaseViewController.swift
//  Tech News Hub
//
//  Created by Dylan on 26/03/2020.
//  Copyright © 2020 The Tech News Hub. All rights reserved.
//

import UIKit

class ProfileBaseViewController: UIViewController {
    
    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        self.view.backgroundColor = UIColor(named: "standardBackgroundColor")
    }
    
//    func setupNextButton() {
//        nextButton.backgroundColor = .white
//        nextButton.setTitleColor(.red, for: .normal)
//        nextButton.setTitle("NEXT", for: .normal)
//
//        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
//
//        view.addSubview(nextButton)
//        setupNextButtonConstraints()
//
//    }
//
//    func setupNextButtonConstraints() {
//        nextButton.translatesAutoresizingMaskIntoConstraints = false
//        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
//        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
//        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
//    }
//
//    @objc func nextButtonTapped() {
//        let nextScreen = FeedPreferencesBaseViewController()
//        nextScreen.title = "Second"
//        navigationController?.pushViewController(nextScreen, animated: true)
//    }
}
