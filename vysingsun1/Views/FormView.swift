//
//  FormView.swift
//  vysingsun1
//
//  Created by Phalkun Panha on 24/8/23.
//  Copyright © 2023 Phalkun Panha. All rights reserved.
//

import UIKit

protocol FormViewDelegate: AnyObject {
    func submit(_ text: String)
    func other()
}

class FormView: UIView {

    private var label: UILabel!
    private var textView: UITextView!
    private var button: UIButton!
    
    weak var delegate: FormViewDelegate?
    
    init() {
        super.init(frame: .zero)
        
        label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "bvfbgdfbnsgbfzbfdagnxdthajhmjhgdfsfbdfsahgdaaddgfhanxvznbzdncxndafghnaetnhteajeajyrjmyhmfmjyskmrysjteagragbreaghfdbcvRwhatehedzg"
        label.numberOfLines = 0
//        label.al
        
        textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .darkGray
        textView.layer.cornerRadius = 6
        
        button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Submit", for: .normal)
        button.addTarget(self, action: #selector(submit), for: .touchUpInside)
        
        addSubview(label)
        self.addSubview(textView)
        self.addSubview(button)
        
        label.leadingAnchor.constraint(equalTo: textView.leadingAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: textView.trailingAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: textView.topAnchor, constant: -20).isActive = true
        
        textView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40).isActive = true
        textView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40).isActive = true
        textView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        textView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
        button.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
//        let tapGus = UITapGestureRecognizer(target: self, action: #selector(closeKeyboard))
//        addGestureRecognizer(tapGus)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func submit() {
        delegate?.submit(textView.text)
    }
    
//    MARK: - Action to close key board
    @objc private func closeKeyboard(){
        textView.resignFirstResponder()
    }
}
