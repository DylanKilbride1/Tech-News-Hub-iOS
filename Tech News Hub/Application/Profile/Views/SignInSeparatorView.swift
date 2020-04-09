//
//  SignInSeparatorView.swift
//  Tech News Hub
//
//  Created by Dylan on 04/04/2020.
//  Copyright © 2020 The Tech News Hub. All rights reserved.
//

import UIKit

class SignInSeparatorView: UIView {
  
  @IBOutlet var contentView: UIView!
  @IBOutlet weak var signInLabel: UILabel!
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupViews()
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupViews()
  }
  
  func setupViews() {
    let nib = UINib(nibName: "SignInSeparatorView", bundle: nil)
    nib.instantiate(withOwner: self, options: nil)
    addSubview(contentView)
    contentView.frame = self.bounds
    contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    setupViewTheme()
  }
  
  func setupViewTheme() {
    contentView.backgroundColor = UIColor.init(named: "standardBackgroundColor")
    signInLabel.textColor = UIColor.init(named: "profileSignInLabelColor")
  }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
