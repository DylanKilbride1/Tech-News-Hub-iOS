//
//  ArticlePreviewView.swift
//  Tech News Hub
//
//  Created by Dylan on 11/04/2020.
//  Copyright © 2020 The Tech News Hub. All rights reserved.
//

import UIKit

class ArticlePreviewView: UIView {
  
  @IBOutlet var contentBackgroundView: UIView!
  @IBOutlet weak var articleContentView: UIView!
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }
  
  private func commonInit() {
    Bundle.main.loadNibNamed("ArticlePreviewView", owner: self, options: nil)
    addSubview(contentBackgroundView)
    contentBackgroundView.frame = self.bounds
    setupViewTheme()
    roundViewCorners()
  }
  
  private func setupViewTheme() {
    backgroundColor = .systemBlue
    articleContentView.backgroundColor = UIColor.init(named: "articlePreviewBackgroundColor")
  }
  
  private func roundViewCorners() {
    self.layer.cornerRadius = 15
    self.clipsToBounds = true
    articleContentView.layer.cornerRadius = 15
    }
}
