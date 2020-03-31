//
//  FeedPreferencesBaseViewController.swift
//  Tech News Hub
//
//  Created by Dylan on 26/03/2020.
//  Copyright © 2020 The Tech News Hub. All rights reserved.
//

import UIKit

class FeedPreferencesBaseViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
  }
  
  func setupView() {
    self.view.backgroundColor = UIColor(named: "standardBackgroundColor")
  }
}
