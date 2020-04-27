//
//  ProfileBaseViewController.swift
//  Tech News Hub
//
//  Created by Dylan on 26/03/2020.
//  Copyright © 2020 The Tech News Hub. All rights reserved.
//

import UIKit
import GoogleSignIn

class ProfileBaseViewController: UIViewController {
  
  let nextButton = UIButton()
  @IBOutlet weak var signInOptionsContainer: SignInOptionsView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
    GIDSignIn.sharedInstance()?.presentingViewController = self
    //GIDSignIn.sharedInstance()?.restorePreviousSignIn()
  }
  
  func setupViews() {
    view.backgroundColor = Colors.standardBackgroundColor
    signInOptionsContainer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
  }

  func signIn(signIn: GIDSignIn!, didSignInForUser user: GIDGoogleUser!,
    withError error: NSError!) {
      if (error == nil) {
        // Perform any operations on signed in user here.
        // ...
      } else {
        print("\(error.localizedDescription)")
      }
  }
}
