//
//  HeroHeaderUIView.swift
//  Health App
//
//  Created by Ravindu Samarakoon on 2023-05-09.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let tipsButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Fitness Tips", for: .normal)
        button.layer.borderColor = UIColor.yellow.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    private let heroImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        return imageView
    }()
    
    private func addGradient() {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor,
            
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
        
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
        addSubview(tipsButton)
        applyConstraints()
    }
    
    private func applyConstraints() {
        
        let tipsButtonConstraints = [
            tipsButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 250),
            tipsButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            tipsButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        NSLayoutConstraint.activate(tipsButtonConstraints)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
