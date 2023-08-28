//
//  ContactTableViewCell.swift
//  vysingsun1
//
//  Created by Phalkun Panha on 23/8/23.
//  Copyright © 2023 Phalkun Panha. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    var onClicked: ((String) -> Void)?
    
    private var contact: Contact!
    
    private lazy var profileImageV: UIImageView = {
        let imgV = UIImageView()
        imgV.translatesAutoresizingMaskIntoConstraints = false
        imgV.backgroundColor = .lightGray
        return imgV
    }()
    
    private lazy var nameLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        return lb
    }()
    
    private lazy var statusLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        lb.backgroundColor = .green
        lb.textAlignment = .center
        return lb
    }()
    
    private lazy var phoneLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        lb.textColor = .lightGray
        return lb
    }()
    
    private lazy var control: UIControl = {
        let con = UIControl()
        con.translatesAutoresizingMaskIntoConstraints = false
        con.backgroundColor = .red
        con.addTarget(self, action: #selector(clicked), for: .touchUpInside)
        
        return con
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(profileImageV)
        contentView.addSubview(nameLabel)
        contentView.addSubview(statusLabel)
        contentView.addSubview(phoneLabel)
        contentView.addSubview(control)
        
        profileImageV.heightAnchor.constraint(equalToConstant: 35).isActive = true
        profileImageV.widthAnchor.constraint(equalTo: profileImageV.heightAnchor).isActive = true
        
//        profileImageV.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15).isActive = true
        profileImageV.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
//        profileImageV.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15).isActive = true
        profileImageV.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: profileImageV.topAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: profileImageV.trailingAnchor, constant: 15).isActive = true

        statusLabel.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor).isActive = true
        statusLabel.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 15).isActive = true
        statusLabel.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant:  -15).isActive = true
        statusLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        statusLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        

        phoneLabel.leadingAnchor.constraint(equalTo: profileImageV.trailingAnchor, constant: 15).isActive = true
        phoneLabel.bottomAnchor.constraint(equalTo: profileImageV.bottomAnchor).isActive = true
        
        control.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        control.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        control.widthAnchor.constraint(equalToConstant: 60).isActive = true
        control.heightAnchor.constraint(equalToConstant: 25).isActive = true
//
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupInfo(contact: Contact) {
        self.contact = contact
        nameLabel.text = contact.name
        statusLabel.text = contact.status
        phoneLabel.text = contact.phone
        
    }
    
    @objc func clicked(){
        onClicked?(contact.name)
    }
}
