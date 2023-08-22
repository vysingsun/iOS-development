//
//  TableViewViewController.swift
//  vysingsun1
//
//  Created by Phalkun Panha on 22/8/23.
//  Copyright © 2023 Phalkun Panha. All rights reserved.
//

import UIKit

class TableViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "table view"
        view.backgroundColor = .red
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "closed"), style: .done, target: self, action: #selector(back))
        // Do any additional setup after loading the view.
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

}
