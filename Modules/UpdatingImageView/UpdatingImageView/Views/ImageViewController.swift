//
//  ImageViewController.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import UIKit

final class ImageViewController: UIViewController {
    
    var presenter: ImageViewPresenting?
    
    private let errorLabel = UILabel()
    private let imageView = UIImageView()
    private let activityIndicatorView = UIActivityIndicatorView(style: .whiteLarge)

    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .black
        
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.backgroundColor = UIColor.black
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapped)))
        view.addSubview(imageView)
        
        activityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(activityIndicatorView)
        
        errorLabel.translatesAutoresizingMaskIntoConstraints = false
        errorLabel.text = "Ooops! it seems like we pugged up. This specific image won't load.\nTap the screen to try again."
        errorLabel.font = UIFont.preferredFont(forTextStyle: .caption1)
        errorLabel.textColor = .white
        errorLabel.textAlignment = .center
        errorLabel.numberOfLines = 0
        view.addSubview(errorLabel)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            errorLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            errorLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            errorLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            imageView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            imageView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            
            activityIndicatorView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activityIndicatorView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
    @objc func tapped() {
        presenter?.tappedView()
    }
}

extension ImageViewController: ImageViewing {
    
    func showImage(_ image: UIImage) {
        imageView.image = image
        activityIndicatorView.isHidden = true
        errorLabel.isHidden = true
    }
    
    func showRefreshState() {
        imageView.image = nil
        activityIndicatorView.startAnimating()
        activityIndicatorView.isHidden = false
        errorLabel.isHidden = true
    }
    
    func showError() {
        imageView.image = nil
        activityIndicatorView.isHidden = true
        errorLabel.isHidden = false
    }
}

