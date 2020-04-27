//
//  UIView+TNH.swift
//  Tech News Hub
//
//  Created by Dylan on 25/04/2020.
//  Copyright © 2020 The Tech News Hub. All rights reserved.
//

import UIKit

extension UIView {
  
  func pinToEdges(superView: UIView) {
    translatesAutoresizingMaskIntoConstraints                             = false
    topAnchor.constraint(equalTo: superView.topAnchor).isActive           = true
    leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive   = true
    trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
    bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive     = true
  }
  
}
