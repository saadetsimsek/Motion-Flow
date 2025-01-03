//
//  StepViewController.swift
//  MotionFlow
//
//  Created by Saadet Şimşek on 26/12/2024.
//

import UIKit

class StepViewController: UIViewController {
    
    private let lifeStyleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "run")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let numberLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = ""
        label.font = .systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setConstraints()
        
    }
    
    private func setupView(){
        view.backgroundColor = .systemBackground
        view.addSubview(lifeStyleImageView)
        view.addSubview(numberLabel)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            lifeStyleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lifeStyleImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            lifeStyleImageView.heightAnchor.constraint(equalToConstant: 200),
            lifeStyleImageView.widthAnchor.constraint(equalToConstant: 200),
            
            numberLabel.topAnchor.constraint(equalTo: lifeStyleImageView.bottomAnchor, constant: 10),
            numberLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

  

}
