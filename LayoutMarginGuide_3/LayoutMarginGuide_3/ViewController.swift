//
//  ViewController.swift
//  LayoutMarginGuide_3
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
        let customView = makeView()
        self.view.addSubview(customView)
        NSLayoutConstraint.activate([
            customView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            customView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            customView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            customView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
        ])
        
    }
    func makeView() -> UIView{
        let customView = UIView()
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.backgroundColor = .red
        return customView
    }

}

