//
//  ArticlePreviewView.swift
//  Tech News Hub
//
//  Created by Dylan on 11/04/2020.
//  Copyright © 2020 The Tech News Hub. All rights reserved.
//

import UIKit

class ArticlePreviewView: UITableViewCell {
  
  @IBOutlet var contentBackgroundView: UIView!
  @IBOutlet weak var articleContentView: UIView!
  @IBOutlet weak var articleImageView: UIImageView!
  @IBOutlet weak var articleTitle: UILabel!
  @IBOutlet weak var articleTextPreview: UILabel!
  @IBOutlet weak var articleAuthorView: ArticleAuthorView!
  @IBOutlet weak var shareButton: UIButton!
  @IBOutlet weak var articleCategory: UILabel!
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    commonInit()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    self.contentView.frame = self.contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
  }
  
  private func commonInit() {
    Bundle.main.loadNibNamed("ArticlePreviewView", owner: self, options: nil)
    //addSubview(contentBackgroundView)
    contentBackgroundView.frame = self.bounds
    setupViewTheme()
    roundViewCorners()
  }
  
  private func setupViewTheme() {
    backgroundColor = .systemBlue
    articleContentView.backgroundColor = Colors.articlePreviewBackgroundColor
  }
  
  private func roundViewCorners() {
    self.layer.cornerRadius = 15
    self.clipsToBounds = true
    articleContentView.layer.cornerRadius = 15
    }
}
