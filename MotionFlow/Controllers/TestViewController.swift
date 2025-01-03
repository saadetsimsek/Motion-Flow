//
//  TestViewController.swift
//  MotionFlow
//
//  Created by Saadet Şimşek on 26/12/2024.
//

import UIKit
import AVFoundation

class TestViewController: UIViewController {
    
    private let typingString = "I'm a passionate IOS Developer with a love for creating interactive and dynamic user experiences."
    
    private let girlImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "hy")
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
        addGesture()
    }
    
    private func setupViews(){
        view.backgroundColor = .systemBackground
        view.addSubview(girlImageView)
        girlImageView.addSubview(textLabel)
        
    }
    
    private func addGesture(){
        let gesture = UITapGestureRecognizer(target: self, action: #selector(typingText))
        view.addGestureRecognizer(gesture)
    }
    
    @objc private func typingText(){
        guard var text = textLabel.text else {return}
        
        for char in typingString {
            DispatchQueue.main.async {
                AudioServicesPlaySystemSound(1306)
                text += "\(char)"
                self.textLabel.text = text
                RunLoop.current.run(until: Date() + 0.15)
            }
        }
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            girlImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            girlImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            girlImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 10),
            girlImageView.heightAnchor.constraint(equalToConstant: 200),
                    
            textLabel.topAnchor.constraint(equalTo: girlImageView.topAnchor, constant: 20),
            textLabel.trailingAnchor.constraint(equalTo: girlImageView.trailingAnchor, constant: 50),
            textLabel.widthAnchor.constraint(equalToConstant: 190)
        ])
    }

}
