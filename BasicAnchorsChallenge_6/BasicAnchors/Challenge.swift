//
//  Challenge.swift
//  BasicAnchors
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {

    let margin: CGFloat = 20
    let spacing: CGFloat = 32

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
    }

    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }

    func setupViews() {
        
        // Comment in incrementally ...
        let offlineLabel = makeLabel(withText: "Offline")
        let offlineSwitch = makeSwitch(isOn: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        
        let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
        let crossfadeMinLabel = makeSubLabel(withText: "0s")
        let crossfadeMaxLabel = makeSubLabel(withText: "12s")
        let crossfadeProgressView = makeProgressView()
        
        let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
        let gaplessPlaybackSwitch = makeSwitch(isOn: true)
        
        let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
        let hideSongsSwitch = makeSwitch(isOn: true)
        
        let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
        let enableNormalizationSwitch = makeSwitch(isOn: true)
        
        view.addSubview(offlineLabel)
        view.addSubview(offlineSwitch)
        view.addSubview(offlineSublabel)
        
        view.addSubview(crossfadeLabel)
        view.addSubview(crossfadeMinLabel)
        view.addSubview(crossfadeProgressView)
        view.addSubview(crossfadeMaxLabel)
        
        view.addSubview(gaplessPlaybackLabel)
        view.addSubview(gaplessPlaybackSwitch)
        
        view.addSubview(hideSongsLabel)
        view.addSubview(hideSongsSwitch)
        
        view.addSubview(enableNormalizationLabel)
        view.addSubview(enableNormalizationSwitch)
        
        // Start your layout here...
        NSLayoutConstraint.activate([
            offlineLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            
            offlineSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            offlineSwitch.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            
            offlineSublabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            offlineSublabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: 20),
            offlineSublabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            crossfadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            crossfadeLabel.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: 32),
            
            crossfadeMinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: 32),
            
            crossfadeMinLabel.widthAnchor.constraint(equalToConstant: 20),
            
            crossfadeMaxLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -22),
            crossfadeMaxLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: 32),
            crossfadeMaxLabel.widthAnchor.constraint(equalToConstant: 25),
            
            crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 10),
            crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: -10),
            crossfadeProgressView.heightAnchor.constraint(equalToConstant: 5),
            crossfadeProgressView.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: 32),
            
            gaplessPlaybackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            gaplessPlaybackLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            gaplessPlaybackLabel.topAnchor.constraint(equalTo: crossfadeMaxLabel.bottomAnchor, constant: 32),
            
            gaplessPlaybackSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            gaplessPlaybackSwitch.topAnchor.constraint(equalTo: crossfadeMaxLabel.bottomAnchor, constant: 32),
            
            hideSongsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            hideSongsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            hideSongsLabel.topAnchor.constraint(equalTo: gaplessPlaybackSwitch.bottomAnchor, constant: 32),
            
            hideSongsSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            hideSongsSwitch.topAnchor.constraint(equalTo: gaplessPlaybackSwitch.bottomAnchor, constant: 32),
            
            enableNormalizationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            enableNormalizationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            enableNormalizationLabel.topAnchor.constraint(equalTo: hideSongsSwitch.bottomAnchor, constant: 32),
            
            enableNormalizationSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            enableNormalizationSwitch.topAnchor.constraint(equalTo: hideSongsSwitch.bottomAnchor, constant: 32)
            
            
        ])
        
       
        
    }
}

