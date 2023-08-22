//
//  WelcomeViewController.swift
//  vysingsun1
//
//  Created by Phalkun Panha on 18/8/23.
//  Copyright © 2023 Phalkun Panha. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    var items = ["🎾  TableView", "⚙️ Collention View", "🔧 Activity View", "🏙️ Image View", "🌅 Page", "🌠 Popovers", "⛲️ Spit View", "💡 Text View", "🏝️ Web View"]
    
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
//        navigationController.navigationBar.refersLargeTitles = true
        view.backgroundColor = .white
        title = "Welcome"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "closed"), style: .done, target: self, action: #selector(close))
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self 
        tableView.delegate = self
        
        tableView.setEditing(true, animated: false)
        self.view.addSubview(tableView)
    }
    
    deinit {
        print("Welcome view controller dead!")
    }
    // MARK:
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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
//        cell.accessoryType = .disclosureIndicator
//        cell.accessoryType = .detailButton
        return cell
    }
}

extension WelcomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(items[indexPath.row])
    }
    
//    my testing
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return UITableViewCell.EditingStyle.none
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let fromRow = sourceIndexPath.row
        let toROw = destinationIndexPath.row
        let obj = items[fromRow]
        
        items.remove(at: fromRow)
        items.insert(obj, at: toROw)
    }
}
