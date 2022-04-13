//
//  HeritageViewController.swift
//  Expo1900
//
//  Created by Taeangel, dudu on 2022/04/13.
//

import UIKit

class HeritageViewController: UIViewController {
  private let tableView = UITableView()
  private var heritageList = [Heritage]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    attribute()
    layout()
  }
  
  private func attribute() {
    view.backgroundColor = .systemBackground
    title = "한국의 출품작"
    prepareData()
  }
  
  private func prepareData() {
    guard let heritages = ParseManager<[Heritage]>.parse(name: "items") else {
      return
    }
    heritageList = heritages
  }
  
  private func layout() {
    view.addSubview(tableView)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
  }
}