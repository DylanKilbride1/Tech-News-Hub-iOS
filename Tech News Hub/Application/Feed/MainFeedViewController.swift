//
//  MainFeedViewController.swift
//  Tech News Hub
//
//  Created by Dylan on 27/03/2020.
//  Copyright © 2020 The Tech News Hub. All rights reserved.
//

import UIKit

class MainFeedViewController: UIViewController {
    
  @IBOutlet weak var articlePreview: ArticlePreviewView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
      setupView()
    }
    
    func setupView() {
      view.backgroundColor = UIColor(named: "standardBackgroundColor")
    }
}
