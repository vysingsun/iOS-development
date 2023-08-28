//
//  WelcomeViewController.swift
//  vysingsun1
//
//  Created by Phalkun Panha on 18/8/23.
//  Copyright © 2023 Phalkun Panha. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

//    private let views = ["🍏 Table view", "⚙️ Collection view", "🔧 Activity view", "🏙 Image view", "🌅 Pages", "🌠 Popovers", "⛲️ Spit view", "💡 Text view", "🏝 Web view"]
//    private let controls = ["🧞‍♀️ Date Picker", "🥇 Button", "🏄🏻‍♀️ Color wells", "🏊‍♀️ Context menus", "🏄🏻‍♀️ Edit menus", "🎪 Pickers", "🏵 Pull down menus", "🎲 Segmented Controls", "🫖 Sliders", "🍭 Steppers", "🥂 Switches", "🍥 Text Fields"]

    var items = ["🎾  TableView", "⚙️ Collention View", "🔧 Activity View", "🏙️ Image View", "🌅 Page", "🌠 Popovers", "⛲️ Spit View", "💡 Text View", "🏝️ Web View"]
    
    private var uikitDoc = [["🍏 Table view", "⚙️ Collection view", "🔧 Activity view", "🏙 Image view", "🌅 Pages", "🌠 Popovers", "⛲️ Spit view", "💡 Text view", "🏝 Web view"], ["🧞‍♀️ Date Picker", "🥇 Button", "🏄🏻‍♀️ Color wells", "🏊‍♀️ Context menus", "🏄🏻‍♀️ Edit menus", "🎪 Pickers", "🏵 Pull down menus", "🎲 Segmented Controls", "🫖 Sliders", "🍭 Steppers", "🥂 Switches", "🍥 Text Fields"]] // [[], []]
    
    private lazy var tableView: UITableView = {
        let tb = UITableView(frame: .zero, style: .insetGrouped)
        tb.translatesAutoresizingMaskIntoConstraints = false
        tb.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tb
    }()
    
    override func loadView() {
        super.loadView()
        
        view.addSubview(tableView)
        
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        big title
//        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .white
        title = "Welcome"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "closed"), style: .done, target: self, action: #selector(close))
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self 
        tableView.delegate = self
        
//        to edit or move row of table
//        tableView.setEditing(true, animated: false)
//        self.view.addSubview(tableView)
    }
    
    func loadUser(){
        tableView.reloadData()
    }
    
    deinit {
        print("Welcome view controller dead!")
    }
    // MARK: action to close
    @objc private func close() {
        dismiss(animated: true) {
            // Do something after closed
            
        }
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

extension WelcomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
        return uikitDoc.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return items.count
//        if section == 0 {
//            return views.count
//        } else {
//            return controls.count
//        }
        
        
        return uikitDoc[section].count  // uikitDoc[0].count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = items[indexPath.row]
        cell.accessoryType = .disclosureIndicator
//        cell.accessoryType = .detailButton
//        if indexPath.section == 0 {
//            cell.textLabel?.text = views[indexPath.row]
//        }else {
//            cell.textLabel?.text = controls[indexPath.row]
//        }
        
        if indexPath.section == 0 {
            cell.textLabel?.text = uikitDoc[indexPath.section][indexPath.row]
        }else {
            cell.textLabel?.text = uikitDoc[indexPath.section][indexPath.row]
        }
        return cell
    }
}

extension WelcomeViewController: UITableViewDelegate {
    
    //    for header by defualt
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "UIkit Views"
        }else {
            return "Controls"
        }
    }
    
    //    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
    //        if section == 0 {
    //            return "Learning UIkit Views"
    //        }else {
    //            return "Learning UIkit Controls"
    //        }
    //    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(uikitDoc[indexPath.section][indexPath.row])
        
        switch indexPath.section {
        case 0:
            if indexPath.row == 0 {
                let tbVC = TableViewViewController()
                navigationController?.pushViewController(tbVC, animated: true)
            }else if indexPath.row == 7 {
                let tbVC = FormViewController()
                navigationController?.pushViewController(tbVC, animated: true)
            }
        case 1:
            break
        default:
            break
        }
    
    }

//    my testing
    
//  this 3 func to edit or move row of table
//    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
//        return UITableViewCell.EditingStyle.none
//    }
//    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
//        let fromRow = sourceIndexPath.row
//        let toROw = destinationIndexPath.row
//        let obj = items[fromRow]
//
//        items.remove(at: fromRow)
//        items.insert(obj, at: toROw)
//    }
}
