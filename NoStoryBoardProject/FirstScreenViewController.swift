//
//  FirstScreenViewController.swift
//  NoStoryBoardProject
//
//  Created by Bizet Rodriguez on 11/17/18.
//  Copyright © 2018 Bizet Rodriguez. All rights reserved.
//

import UIKit

class FirstScreenViewController: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupNextButton()
        
        self.title = "First Screen"
        
        view.backgroundColor = .red
    }

    func setupNextButton() {
        nextButton.backgroundColor = .white
        nextButton.setTitleColor(.red, for: .normal)
        nextButton.setTitle("NEXT", for: .normal)
        
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        view.addSubview(nextButton)
        setNextButtonConstraints()
    }
    
    func setNextButtonConstraints() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
    }
    
    @objc func nextButtonTapped() {
        let nextScreen = SecondScreen()
        
        nextScreen.title = "Second Screen"
        
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}
