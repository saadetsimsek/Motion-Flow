//
//  ViewController.swift
//  MotionFlow
//
//  Created by Saadet Şimşek on 26/12/2024.
//

import UIKit

class ViewController: UIViewController {
    
    var stackView = UIStackView()
    
    let stepsButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemBlue
        button.setTitle("Steps", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.addTarget(self,
                         action: #selector(stepsButtonTapped),
                         for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let textButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemBlue
        button.setTitle("Text", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.addTarget(self,
                         action: #selector(textButtonTapped),
                         for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }
    
    private func setupViews(){
        view.backgroundColor = .systemBackground
        view.addSubview(stepsButton)
        view.addSubview(textButton)
    }

    @objc func stepsButtonTapped(){
        let vc = StepViewController()
        let navigationController = UINavigationController(rootViewController: vc)
        present(navigationController, animated: true)
    }
    
    @objc func textButtonTapped(){
        let vc = TestViewController()
        let navigationController = UINavigationController(rootViewController: vc)
        present(navigationController, animated: true)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            stepsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stepsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            stepsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stepsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stepsButton.heightAnchor.constraint(equalToConstant: 40),
            
            textButton.topAnchor.constraint(equalTo: stepsButton.bottomAnchor, constant: 10),
            textButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            textButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }

}

