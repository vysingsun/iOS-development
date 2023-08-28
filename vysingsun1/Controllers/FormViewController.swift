//
//  FormViewController.swift
//  vysingsun1
//
//  Created by Phalkun Panha on 24/8/23.
//  Copyright © 2023 Phalkun Panha. All rights reserved.
//

import UIKit


class FormViewController: UIViewController {
    
    private var formView: FormView!
    
    override func loadView() {
        super.loadView()
        formView = FormView()
        formView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(formView)
        
        formView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        formView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        formView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        formView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        // for screen but no safe area
//        formView.frame = view.frame
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        formView.delegate = self
    }
    
    

}

//MAEK: - Form view delegate

extension FormViewController: FormViewDelegate {
    func submit(_ text: String) {
        print(text)
    }
    
    func submit() {
        print("Submit")
    }
    
    func other() {
        print("Other")
    }
}
