//
//  GFAlertVC.swift
//  GitHubFollowers
//
//  Created by Yagub Shukurov on 1/30/20.
//  Copyright © 2020 Yagub Shukurov. All rights reserved.
//

import UIKit

class GFAlertVC: UIViewController {
    
    let containverView = UIView()
    let titleLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "OK")
    
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    
    let padding: CGFloat = 20
    
    init(title: String, message: String, btnTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.message = message
        self.buttonTitle = btnTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        configureContainerView()
        configureTitleLabel()
        configureActionButton()
        configureMessageLabel()
    }
    
    func configureContainerView(){
        view.addSubview(containverView)
        containverView.backgroundColor = .systemBackground
        containverView.layer.cornerRadius = 16
        containverView.layer.borderWidth = 2
        containverView.layer.borderColor = UIColor.white.cgColor
        containverView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            containverView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containverView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containverView.widthAnchor.constraint(equalToConstant: 280),
            containverView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
    
    func configureTitleLabel() {
        containverView.addSubview(titleLabel)
        titleLabel.text = alertTitle ?? "Something went wrong"
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containverView.topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: containverView.leadingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: containverView.trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    func configureActionButton() {
        containverView.addSubview(actionButton)
        actionButton.setTitle(buttonTitle ?? "OK", for: .normal)
        actionButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: containverView.bottomAnchor, constant: -padding),
            actionButton.leadingAnchor.constraint(equalTo: containverView.leadingAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: containverView.trailingAnchor, constant: -padding),
            actionButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    func configureMessageLabel() {
        containverView.addSubview(messageLabel)
        messageLabel.text = message ?? "Unable to complete request"
        messageLabel.numberOfLines = 4
        
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            messageLabel.leadingAnchor.constraint(equalTo: containverView.leadingAnchor, constant: padding),
            messageLabel.trailingAnchor.constraint(equalTo: containverView.trailingAnchor, constant: -padding),
            messageLabel.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -12)
        ])
        
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }

}
