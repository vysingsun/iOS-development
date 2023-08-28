//
//  ViewController.swift
//  vysingsun1
//
//  Created by Phalkun Panha on 8/15/23.
//  Copyright © 2023 Phalkun Panha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Vysing Sun"
        label.textColor = .white
        
//        label.font = .
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var button_for_bg_field: UIButton = {
        let button_for_bg_field = UIButton()
                
        button_for_bg_field.translatesAutoresizingMaskIntoConstraints = false
        
        button_for_bg_field.backgroundColor = .white
        button_for_bg_field.layer.cornerRadius = 10

        return button_for_bg_field
    }()
    
    private lazy var fieldInput: UITextField = {
        let fieldInput = UITextField()
        fieldInput.placeholder = "Input Number"
        fieldInput.backgroundColor = .white
        
//        fieldInput.layer.borderWidth = 1
        fieldInput.layer.cornerRadius = 10
//        fieldInput.layer.borderColor = UIColor.black.cgColor
         
        fieldInput.translatesAutoresizingMaskIntoConstraints = false
        return fieldInput
    }()
    
    private lazy var button1: UIButton = {
        let button1 = UIButton()
                
        button1.translatesAutoresizingMaskIntoConstraints = false
        
        button1.backgroundColor = .white
        button1.setTitle("1", for: .normal)
        button1.setTitleColor(.orange, for: .normal)

        return button1
    }()
    
    private lazy var button2: UIButton = {
        let button2 = UIButton()
        
        button2.translatesAutoresizingMaskIntoConstraints = false
        
        button2.backgroundColor = .white
        button2.setTitle("2", for: .normal)
        button2.setTitleColor(.orange, for: .normal)
        
        return button2
    }()
    
    private lazy var button3: UIButton = {
        let button3 = UIButton()
        
        button3.translatesAutoresizingMaskIntoConstraints = false
        
        button3.backgroundColor = .white
        button3.setTitle("3", for: .normal)
        button3.setTitleColor(.orange, for: .normal)
        return button3
    }()
    
    private lazy var button5: UIButton = {
        let button5 = UIButton()
        
        button5.translatesAutoresizingMaskIntoConstraints = false
        
        button5.backgroundColor = .white
        button5.setTitle("5", for: .normal)
        button5.setTitleColor(.orange, for: .normal)
        return button5
    }()
    
    private lazy var button4: UIButton = {
        let button4 = UIButton()
        
        button4.translatesAutoresizingMaskIntoConstraints = false
        
        button4.backgroundColor = .white
        button4.setTitle("4", for: .normal)
        button4.setTitleColor(.orange, for: .normal)
        return button4
    }()
    
    private lazy var button6: UIButton = {
        let button6 = UIButton()
        
        button6.translatesAutoresizingMaskIntoConstraints = false
        
        button6.backgroundColor = .white
        button6.setTitle("6", for: .normal)
        button6.setTitleColor(.orange, for: .normal)
        return button6
    }()
    
    private lazy var button8: UIButton = {
        let button8 = UIButton()
        
        button8.translatesAutoresizingMaskIntoConstraints = false
        
        button8.backgroundColor = .white
        button8.setTitle("8", for: .normal)
        button8.setTitleColor(.orange, for: .normal)
        return button8
    }()
    
    private lazy var button7: UIButton = {
        let button7 = UIButton()
        
        button7.translatesAutoresizingMaskIntoConstraints = false
        
        button7.backgroundColor = .white
        button7.setTitle("7", for: .normal)
        button7.setTitleColor(.orange, for: .normal)
        return button7
    }()
    
    private lazy var button9: UIButton = {
        let button9 = UIButton()
        
        button9.translatesAutoresizingMaskIntoConstraints = false
        
        button9.backgroundColor = .white
        button9.setTitle("9", for: .normal)
        button9.setTitleColor(.orange, for: .normal)
        return button9
    }()

    private lazy var button0: UIButton = {
        let button0 = UIButton()
        
        button0.translatesAutoresizingMaskIntoConstraints = false
        
        button0.backgroundColor = .white
        button0.setTitle("0", for: .normal)
        button0.setTitleColor(.orange, for: .normal)
        return button0
    }()
    
    private lazy var button001: UIButton = {
        let button001 = UIButton()
        
        button001.translatesAutoresizingMaskIntoConstraints = false
        
        button001.backgroundColor = .black
//        button_a.setTitle("0", for: .normal)
//        button_a.setTitleColor(.orange, for: .normal)
        return button001
    }()
    
    private lazy var button002: UIButton = {
        let button002 = UIButton()

        button002.translatesAutoresizingMaskIntoConstraints = false

        button002.backgroundColor = .black
        return button002
    }()
    
    private lazy var button003: UIButton = {
        let button003 = UIButton()

        button003.translatesAutoresizingMaskIntoConstraints = false

        button003.backgroundColor = .black
        return button003
    }()
    
    private lazy var button004: UIButton = {
        let button004 = UIButton()

        button004.translatesAutoresizingMaskIntoConstraints = false

        button004.backgroundColor = .black
        return button004
    }()
    
    private lazy var button005: UIButton = {
        let button005 = UIButton()

        button005.translatesAutoresizingMaskIntoConstraints = false

        button005.backgroundColor = .black
        return button005
    }()
    
    private lazy var button006: UIButton = {
        let button006 = UIButton()

        button006.translatesAutoresizingMaskIntoConstraints = false

        button006.backgroundColor = .black
        return button006
    }()

    
    
    override func loadView() {
        super.loadView()
        // prepar view.
        view.addSubview(label)
        
        view.addSubview(button_for_bg_field)
        view.addSubview(fieldInput)
        
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        
        view.addSubview(button5)
        view.addSubview(button4)
        view.addSubview(button6)
        
        view.addSubview(button8)
        view.addSubview(button7)
        view.addSubview(button9)
        
        view.addSubview(button0)
        
        view.addSubview(button001)
        view.addSubview(button002)
        view.addSubview(button003)
        view.addSubview(button004)
        view.addSubview(button005)
        view.addSubview(button006)
//        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
//        label.topAnchor.constraint(equalTo: view.topAnchor,constant: 50).isActive = true
//        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
//        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        button_for_bg_field.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button_for_bg_field.bottomAnchor.constraint(equalTo: label.topAnchor,constant: -50).isActive = true
        button_for_bg_field.widthAnchor.constraint(equalToConstant: 220).isActive = true
        button_for_bg_field.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
//        fieldInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        fieldInput.topAnchor.constraint(equalTo: label.topAnchor).isActive = true
        fieldInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        fieldInput.bottomAnchor.constraint(equalTo: label.topAnchor,constant: -50).isActive = true
        fieldInput.widthAnchor.constraint(equalToConstant: 200).isActive = true
        fieldInput.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button2.topAnchor.constraint(equalTo: label.bottomAnchor,constant: 50).isActive = true
//        button2.widthAnchor.constraint(equalTo: ).isActive = true
        button2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button1.trailingAnchor.constraint(equalTo: button2.leadingAnchor,constant: -30).isActive = true
        button1.topAnchor.constraint(equalTo: label.bottomAnchor,constant: 50).isActive = true
        button1.widthAnchor.constraint(equalTo: button2.widthAnchor).isActive = true
        button1.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30).isActive = true //jong derm3 oy width base on  screen device
        button1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button3.leadingAnchor.constraint(equalTo: button2.trailingAnchor,constant: 30).isActive = true
        button3.bottomAnchor.constraint(equalTo: label.bottomAnchor,constant: 100).isActive = true
        button3.widthAnchor.constraint(equalTo: button2.widthAnchor).isActive = true
        button3.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30).isActive = true
        button3.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button5.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button5.topAnchor.constraint(equalTo: button2.bottomAnchor,constant: 30).isActive = true
//        button5.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button5.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button4.trailingAnchor.constraint(equalTo: button5.leadingAnchor,constant: -30).isActive = true
        button4.topAnchor.constraint(equalTo: button1.bottomAnchor,constant: 30).isActive = true
        button4.widthAnchor.constraint(equalTo: button5.widthAnchor).isActive = true
        button4.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30).isActive = true
        button4.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button6.leadingAnchor.constraint(equalTo: button5.trailingAnchor,constant: 30).isActive = true
        button6.topAnchor.constraint(equalTo: button3.bottomAnchor,constant: 30).isActive = true
        button6.widthAnchor.constraint(equalTo: button5.widthAnchor).isActive = true
        button6.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button8.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button8.topAnchor.constraint(equalTo: button5.bottomAnchor,constant: 30).isActive = true
//        button8.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button8.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button7.trailingAnchor.constraint(equalTo: button8.leadingAnchor,constant: -30).isActive = true
        button7.topAnchor.constraint(equalTo: button4.bottomAnchor,constant: 30).isActive = true
        button7.widthAnchor.constraint(equalTo: button8.widthAnchor).isActive = true
        button7.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30).isActive = true
        button7.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button9.leadingAnchor.constraint(equalTo: button8.trailingAnchor,constant: 30).isActive = true
        button9.topAnchor.constraint(equalTo: button6.bottomAnchor,constant: 30).isActive = true
        button9.widthAnchor.constraint(equalTo: button8.widthAnchor).isActive = true
        button9.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30).isActive = true
        button9.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button0.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button0.topAnchor.constraint(equalTo: button8.bottomAnchor,constant: 30).isActive = true
        button0.widthAnchor.constraint(equalTo: button8.widthAnchor).isActive = true
        button0.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button001.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        button001.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30).isActive = true
        button001.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        button002.topAnchor.constraint(equalTo: button001.bottomAnchor).isActive = true
        button002.leadingAnchor.constraint(equalTo: button001.trailingAnchor).isActive = true
        button002.heightAnchor.constraint(equalTo: button001.heightAnchor).isActive = true
        button002.widthAnchor.constraint(equalTo: button001.widthAnchor).isActive = true
        
        button003.topAnchor.constraint(equalTo: button002.bottomAnchor).isActive = true
        button003.leadingAnchor.constraint(equalTo: button002.trailingAnchor).isActive = true
        button003.heightAnchor.constraint(equalTo: button002.heightAnchor).isActive = true
        button003.widthAnchor.constraint(equalTo: button001.widthAnchor).isActive = true
        button003.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30).isActive = true
        
        button004.topAnchor.constraint(equalTo: button003.bottomAnchor).isActive = true
        button004.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button004.heightAnchor.constraint(equalTo: button001.heightAnchor).isActive = true
        button004.widthAnchor.constraint(equalTo: button001.widthAnchor).isActive = true
        
        button005.topAnchor.constraint(equalTo: button004.bottomAnchor).isActive = true
        button005.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30).isActive = true
        button005.heightAnchor.constraint(equalTo: button001.heightAnchor).isActive = true
        button005.widthAnchor.constraint(equalTo: button001.widthAnchor).isActive = true
        
        button006.topAnchor.constraint(equalTo: button004.bottomAnchor).isActive = true
        button006.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30).isActive = true
        button006.heightAnchor.constraint(equalTo: button001.heightAnchor).isActive = true
        button006.widthAnchor.constraint(equalTo: button001.widthAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .orange
        title = "View"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "closed"), style: .done, target: self, action: #selector(back))
    }
    
    @objc private func back() {
//        navigationController?.popViewController(animated: true)
        navigationController?.popToRootViewController(animated: true)
//        let vc = ViewController()
//        navigationController?.pushViewController(vc, animated: true)
    }
    
}

