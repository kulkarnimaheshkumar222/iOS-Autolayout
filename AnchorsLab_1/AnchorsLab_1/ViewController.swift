//
//  ViewController.swift
//  AnchorsLab_1
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
        let upperLeftLabel = makeLabel(withText: "Upper Left")
        self.view.addSubview(upperLeftLabel)
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        
        let upperRightLabel = makeLabel(withText: "Upper Right")
        self.view.addSubview(upperRightLabel)
        upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        
        let bottomLeftLabel = makeLabel(withText: "Bottom Left")
        self.view.addSubview(bottomLeftLabel)
        bottomLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        bottomLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        
        let bottomRightLabel = makeLabel(withText: "Bottom Right")
        self.view.addSubview(bottomRightLabel)
        bottomRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        bottomRightLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        
        let customView = makeView()
        
        self.view.addSubview(customView)
        
      //  customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
//        customView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        customView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //Width
        
        customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        customView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        //Height
        
        customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant:  -100).isActive = true
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        return label
    }
    
    func makeView() -> UIView{
        let customView = UIView()
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.backgroundColor = .red
        return customView
    }


}

