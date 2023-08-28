//
//  TableViewViewController.swift
//  vysingsun1
//
//  Created by Phalkun Panha on 22/8/23.
//  Copyright © 2023 Phalkun Panha. All rights reserved.
//

import UIKit

class TableViewViewController: UITableViewController {
    
    //MARK: -Properties
    private var contacts: [Contact] = []
    
    //MARK: -Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "table view"
        view.backgroundColor = .white
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "closed"), style: .done, target: self, action: #selector(back))
        // Do any additional setup after loading the view.
        
        tableView.register(ContactTableViewCell.self, forCellReuseIdentifier: "cell")
        
        mockData()
    }
    
    @objc private func back() {
//        navigationController?.popViewController(animated: true)
//        navigationController?.popToRootViewController(animated: true)
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ContactTableViewCell {
            cell.setupInfo(contact: contacts[indexPath.row])
            cell.onClicked = {
                [weak self] name in
                print(name)
            }
            cell.separatorInset = UIEdgeInsets(top: 0, left: 50, bottom: 0, right: 0)
            return cell
        }
        
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 35 + 15 + 15
    }
    
    private func mockData() {
        let cont1 = Contact(name: "Vysing Suns", status: "Active", phone: "015674774")
        let cont2 = Contact(name: "Vysing Sun", status: "Active", phone: "015674774")
        let cont3 = Contact(name: "Vysing Sun", status: "Active", phone: "015674774")
        let cont4 = Contact(name: "Vysing Sun", status: "Active", phone: "015674774")
        let cont5 = Contact(name: "Vysing Sun", status: "Active", phone: "015674774")
        
        contacts.append(cont1)
        contacts.append(cont2)
        contacts.append(cont3)
        contacts.append(cont4)
        contacts.append(cont5)
    }
}
