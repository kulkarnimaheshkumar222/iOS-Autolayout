//
//  ViewController.swift
//  MarginGuideSpacerView_4
//
//  Created by Mahesh Kulkarni on 24/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpView()
    }
    
    func setUpView() {
        let leadingGuide = UILayoutGuide()
        let okButton = makeButton(title: "OK", color: .darkblue)
        let middleGuide = UILayoutGuide()
        let cancelButton = makeButton(title: "CANCEL", color: .darkGreen)
        let trailingGuide = UILayoutGuide()
        
        view.addLayoutGuide(leadingGuide)
        view.addSubview(okButton)
        view.addLayoutGuide(middleGuide)
        view.addSubview(cancelButton)
        view.addLayoutGuide(trailingGuide)
        NSLayoutConstraint.activate([
            
            leadingGuide.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            leadingGuide.trailingAnchor.constraint(equalTo: okButton.leadingAnchor),
            okButton.trailingAnchor.constraint(equalTo: middleGuide.leadingAnchor),
            middleGuide.trailingAnchor.constraint(equalTo: cancelButton.leadingAnchor),
            cancelButton.trailingAnchor.constraint(equalTo: trailingGuide.leadingAnchor),
            trailingGuide.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            okButton.widthAnchor.constraint(equalTo: cancelButton.widthAnchor),
            leadingGuide.widthAnchor.constraint(equalTo: middleGuide.widthAnchor),
            leadingGuide.widthAnchor.constraint(equalTo: trailingGuide.widthAnchor),
            
            leadingGuide.heightAnchor.constraint(equalToConstant: 1),
            middleGuide.heightAnchor.constraint(equalToConstant: 1),
            trailingGuide.heightAnchor.constraint(equalToConstant: 1),
            
            leadingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            okButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            middleGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cancelButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            trailingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            
        ])
        
    }
    
    func makeButton(title: String, color: UIColor) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        button.backgroundColor = color
        return button
    }
    
    
}

extension UIColor {
    static let darkblue = UIColor(red: 27/255, green: 152/255, blue: 245/255, alpha: 1)
    static let darkGreen = UIColor(red: 56/255, green: 204/255, blue: 119/255, alpha: 1)
}
