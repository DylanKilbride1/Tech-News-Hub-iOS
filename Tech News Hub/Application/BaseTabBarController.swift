//
//  BaseTabBarController.swift
//  Tech News Hub
//
//  Created by Dylan on 27/03/2020.
//  Copyright © 2020 The Tech News Hub. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupTabBarItems()
    // Do any additional setup after loading the view.
  }
  
  override func viewWillAppear(_ animated: Bool) {
    self.navigationController?.setNavigationBarHidden(true, animated: true)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    self.navigationController?.setNavigationBarHidden(false, animated: true)
  }
  
  func setupTabBarItems() {
    let profileViewController = ProfileBaseViewController()
    let feedPreferencesViewController = FeedPreferencesBaseViewController()
    let feedViewController = MainFeedViewController()
    
    let feedPreferencesTabBarItem = UITabBarItem(title: NSLocalizedString("tab.bar.feed.preferences.title", comment: ""),
                                                 image: UIImage(named: "TabBarIcons/feed-preferences-unselected-icon"),
                                                 selectedImage: UIImage(named: "TabBarIcons/feed-preferences-selected-icon"))
    
    let feedTabBarItem = UITabBarItem(title: NSLocalizedString("tab.bar.feed.title", comment: ""),
                                      image: UIImage(named: "TabBarIcons/feed-unselected-icon"),
                                      selectedImage: UIImage(named: "TabBarIcons/feed-selected-icon"))
    
    let profileTabBarItem = UITabBarItem(title: NSLocalizedString("tab.bar.profile.title", comment: ""),
                                         image: UIImage(named: "TabBarIcons/profile-unselected-icon"),
                                         selectedImage: UIImage(named: "TabBarIcons/profile-selected-icon"))
    
    feedPreferencesViewController.tabBarItem = feedPreferencesTabBarItem
    feedViewController.tabBarItem = feedTabBarItem
    profileViewController.tabBarItem = profileTabBarItem
    
    let controllers = [feedPreferencesViewController, feedViewController, profileViewController]

    self.viewControllers = controllers
    
    self.selectedIndex = 1
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
