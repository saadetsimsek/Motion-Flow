//
//  StepViewController.swift
//  MotionFlow
//
//  Created by Saadet Şimşek on 26/12/2024.
//

import UIKit

class StepViewController: UIViewController {
    
    private var startValue = 0
    private let endValue = 1600
  //  private let duration = 30 // ne kadar atlayarak artacak
    private var duration = 0
    
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
        createDisplayLink()
        
        // duration'ı endValue'yu 34'e bölerek hesapla
        duration = endValue / 34
        
    }
    
    private func setupView(){
        view.backgroundColor = .systemBackground
        view.addSubview(lifeStyleImageView)
        view.addSubview(numberLabel)
    }
    
    private func createDisplayLink(){
        let displayLink = CADisplayLink(target: self, selector: #selector(step))
        displayLink.add(to: .current, forMode: .default)
        displayLink.preferredFramesPerSecond = 30 // saniyede sadece belirtilen rakam kadar tetiklenmesi
    }
    
    @objc private func step(displayLink: CADisplayLink){
        startValue += duration
        numberLabel.text = "Step today: \(startValue)"
        
        if startValue >= endValue {
            displayLink.invalidate()
         //   startValue = endValue
            numberLabel.text = "Step today: \(endValue)"
        }
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
