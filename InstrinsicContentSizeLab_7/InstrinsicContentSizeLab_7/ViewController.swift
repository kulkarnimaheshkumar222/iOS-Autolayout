//
//  ViewController.swift
//  InstrinsicContentSizeLab_7
//
//  Created by Mahesh Kulkarni on 24/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpViews()
    }

    func setUpViews() {
        let topLabel = makeLabel(withText: "Top Label")
        self.view.addSubview(topLabel)
        
        NSLayoutConstraint.activate([
            topLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }

    func makeLabel(withText text: String) -> UILabel {
           let label = BigLabel()
           label.translatesAutoresizingMaskIntoConstraints = false
           label.text = text
           label.font = UIFont.systemFont(ofSize: 32)
           label.backgroundColor = .yellow
           return label
       }
}

class BigLabel: UILabel {
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 100)
    }
}
