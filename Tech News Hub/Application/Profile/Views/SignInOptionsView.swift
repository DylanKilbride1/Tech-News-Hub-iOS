//
//  SignInOptionsView.swift
//  Tech News Hub
//
//  Created by Dylan on 03/04/2020.
//  Copyright © 2020 The Tech News Hub. All rights reserved.
//

import UIKit
import GoogleSignIn
import SnapKit

class SignInOptionsView: UIView {
  
  @IBOutlet var contentView: UIView!
  @IBOutlet weak var googleSignInContainer: UIView!
  @IBOutlet weak var facebookSignInContainer: UIView!
  
  //Deserialises object from disk
  //For using custom view in IB
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    initSubviews()
  }
  
  //For using custom view in code
  override init(frame: CGRect) {
    super.init(frame: frame)
    initSubviews()
  }
  
  func initSubviews() {
    let nib = UINib(nibName: "SignInOptionsView", bundle: nil)
    nib.instantiate(withOwner: self, options: nil)
    addSubview(contentView)
    contentView.frame = self.bounds
    contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    setupViewTheme()
  }
  
  func setupViewTheme() {
    self.contentView.backgroundColor = UIColor.init(named: "standardBackgroundColor")
    addGoogleSignInButton()
  }
  
  func addGoogleSignInButton() {
    let googleSignInButton = GIDSignInButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    googleSignInContainer.addSubview(googleSignInButton)
    googleSignInButton.snp.makeConstraints { (make) -> Void in
      make.edges.equalTo(googleSignInContainer)
    }
    
  }
  
  func addFacebookSignInButton() {
    
  }

}
