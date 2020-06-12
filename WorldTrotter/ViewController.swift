//
//  ViewController.swift
//  WorldTrotter
//
//  Created by ZELIMKHAN MAGAMADOV on 11.06.2020.
//  Copyright © 2020 ZELIMKHAN MAGAMADOV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  let gradientLayer = CAGradientLayer()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    showGradient()
    
  }
  
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    gradientLayer.frame = view.bounds
  }
  
  func showGradient() {
    gradientLayer.frame = view.bounds
    gradientLayer.colors = [
      UIColor.red.cgColor,
      UIColor.orange.cgColor,
      UIColor.yellow.cgColor,
      UIColor.green.cgColor,
      UIColor.blue.cgColor,
      UIColor.purple.cgColor
    ]
    
    gradientLayer.startPoint = CGPoint(x: 0, y: 0)
    gradientLayer.endPoint = CGPoint(x: 0, y: 1)
    view.layer.insertSublayer(gradientLayer, at: 0)
  }
}
