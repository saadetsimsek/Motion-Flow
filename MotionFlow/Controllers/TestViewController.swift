//
//  TestViewController.swift
//  MotionFlow
//
//  Created by Saadet Şimşek on 26/12/2024.
//

import UIKit

class TestViewController: UIViewController {
    
    private let girlImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "girl")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = ""
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setConstraints()
        
    }
    
    private func setupViews(){
        view.backgroundColor = .systemBackground
        view.addSubview(girlImageView)
        girlImageView.addSubview(textLabel)
    }
    
    
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            girlImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            girlImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            girlImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            girlImageView.heightAnchor.constraint(equalToConstant: 300),
            
            textLabel.topAnchor.constraint(equalTo: girlImageView.topAnchor, constant: 70),
            textLabel.trailingAnchor.constraint(equalTo: girlImageView.trailingAnchor, constant: -20),
            textLabel.widthAnchor.constraint(equalToConstant: 190)
        ])
    }

   

}
