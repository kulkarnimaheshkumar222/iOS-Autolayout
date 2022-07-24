//
//  ViewController.swift
//  SafeAreaLab_2
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
        let topLabel = makeLabel(withText: "Top Label")
        self.view.addSubview(topLabel)
        
        let bottomLabel = makeLabel(withText: "Bottom Label")
        self.view.addSubview(bottomLabel)
        
        let leadingLabel = makeLabel(withText: "Leading Label")
        self.view.addSubview(leadingLabel)
        
        let trailingLabel = makeLabel(withText: "Trailing Label")
        self.view.addSubview(trailingLabel)
        
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 8),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -8),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            leadingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            leadingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            trailingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            trailingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont.systemFont(ofSize: 32)
        label.backgroundColor = .yellow
        return label
    }

}

