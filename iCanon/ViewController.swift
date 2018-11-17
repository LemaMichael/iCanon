//
//  ViewController.swift
//  iCanon
//
//  Created by Michael Lema on 11/17/18.
//  Copyright © 2018 Michael Lema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var D0Button: PinButton = {
        let button = PinButton()
        button.setTitle("D0", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var D1Button: PinButton = {
        let button = PinButton()
        button.setTitle("D1", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var D2Button: PinButton = {
        let button = PinButton()
        button.setTitle("D2", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var D3Button: PinButton = {
        let button = PinButton()
        button.setTitle("D3", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var D4Button: PinButton = {
        let button = PinButton()
        button.setTitle("D4", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var vButton: PinButton = {
        let button = PinButton()
        button.setTitle("3V3", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var gndButton: PinButton = {
        let button = PinButton()
        button.setTitle("GND", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var D5Button: PinButton = {
        let button = PinButton()
        button.setTitle("D5", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var D6Button: PinButton = {
        let button = PinButton()
        button.setTitle("D6", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var D7Button: PinButton = {
        let button = PinButton()
        button.setTitle("D7", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var D8Button: PinButton = {
        let button = PinButton()
        button.setTitle("D8", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var rxButton: PinButton = {
        let button = PinButton()
        button.setTitle("RX", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var txButton: PinButton = {
        let button = PinButton()
        button.setTitle("TX", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var gnd2Button: PinButton = {
        let button = PinButton()
        button.setTitle("GND", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var v2Button: PinButton = {
        let button = PinButton()
        button.setTitle("3V3", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var rightStackView: UIStackView = {
       let stackView = UIStackView(arrangedSubviews: [D0Button, D1Button,D2Button,D3Button,D4Button,vButton,gndButton,D5Button,D6Button,D7Button,D8Button,rxButton,txButton,gnd2Button,v2Button])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    //// Left Side
    lazy var A0Button: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("A0", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var rsvButton: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("RSV", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var rsv2Button: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("RSV", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var SD3Button: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("SD3", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var SD2Button: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("SD2", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var SD1Button: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("SD1", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var cmdButton: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("CMD", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var SD0Button: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("SD0", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var CLKButton: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("CLK", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var gnd3Button: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("GND", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var v3Button: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("3V3", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var ENButton: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("EN", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var RSTButton: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("RST", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var gnd4Button: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("GND", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    lazy var VinButton: PinButton = {
        let button = PinButton()
        button.rotateCounterclockwise = true
        button.setTitle("Vin", for: .normal)
        button.addTarget(self, action: #selector(handleButton(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var leftStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [A0Button,rsvButton,rsv2Button,SD3Button,SD2Button,SD1Button,cmdButton,SD0Button,CLKButton,gnd3Button,v3Button,ENButton,RSTButton,gnd4Button,VinButton])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = true
        view.backgroundColor = UIColor(red:0.14, green:0.12, blue:0.11, alpha:1.00)
        return view
    }()
    
    @objc fileprivate func handleButton(sender: PinButton) {
        guard let label = sender.titleLabel, let pin = label.text else { return }
        print(pin)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(containerView)
        containerView.addSubview(rightStackView)
        containerView.addSubview(leftStackView)
        view.backgroundColor = .white
        setupContainerView()
    }
    
    fileprivate func setupContainerView() {
        containerView.anchor(top: nil, bottom: bottomLayoutGuide.topAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 16, paddingRight: 16, width: 0, height: UIScreen.main.bounds.height * 0.6)
        rightStackView.anchor(top: containerView.topAnchor, bottom: containerView.bottomAnchor, left: nil, right: containerView.rightAnchor, paddingTop: 10, paddingBottom: 10, paddingLeft: 0, paddingRight: 4, width: 50, height: 0)
        leftStackView.anchor(top: containerView.topAnchor, bottom: containerView.bottomAnchor, left: containerView.leftAnchor, right: nil, paddingTop: 10, paddingBottom: 10, paddingLeft: 4, paddingRight: 0, width: 50, height: 0)
    }
    
}

