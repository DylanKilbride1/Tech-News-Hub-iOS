//
//  MainFeedViewController.swift
//  Tech News Hub
//
//  Created by Dylan on 25/04/2020.
//  Copyright © 2020 The Tech News Hub. All rights reserved.
//

import UIKit

class MainFeedViewController: UIViewController {
  
  var tableView = UITableView()
  @IBOutlet weak var articleTableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureTableView()
  }
  
  func configureTableView() {
    view.addSubview(articleTableView)
    setTableViewDelegates()
    articleTableView.rowHeight = 295
    articleTableView.backgroundColor = Colors.standardBackgroundColor
    view.backgroundColor = Colors.standardBackgroundColor
    articleTableView.register(ArticlePreviewView.self, forCellReuseIdentifier: "ArticlePreviewCell")
    articleTableView.pinToEdges(superView: view)
    
  }
  
  func setTableViewDelegates() {
    articleTableView.delegate = self
    articleTableView.dataSource = self
  }
}


extension MainFeedViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
    //How many cells will it show
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "ArticlePreviewCell") as! ArticlePreviewView
    
    return cell
    //What cells is it showing
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("You tapped cell number \(indexPath.row).")
  }
  
  
}
