//
//  ArticleAuthorView.swift
//  Tech News Hub
//
//  Created by Dylan on 09/04/2020.
//  Copyright © 2020 The Tech News Hub. All rights reserved.
//

import UIKit

class ArticleAuthorView: UIView {

  @IBOutlet var contentView: UIView!
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    initSubviews()
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    initSubviews()
  }
  
  func initSubviews() {
    let nib = UINib(nibName: "ArticleAuthorView", bundle: nil)
    nib.instantiate(withOwner: self, options: nil)
    addSubview(contentView)
    contentView.frame = self.bounds
    contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    setupViewTheme()
  }
  
  private func setupViewTheme() {
    contentView.backgroundColor = UIColor.init(named: "articlePreviewBackgroundColor")
  }
  
  
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
