//
//  RootViewController.swift
//  vysingsun1
//
//  Created by Phalkun Panha on 17/8/23.
//  Copyright © 2023 Phalkun Panha. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var imageView: UIImageView = {
        let imgV = UIImageView()
        imgV.translatesAutoresizingMaskIntoConstraints = false
        imgV.image = UIImage(named: "apple-icon")
        return imgV
    }()
    
    private lazy var welcomeView: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome!"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
    private lazy var btn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .blue
        btn.setTitle("Workspace", for: .normal)
        btn.setTitleColor(.white, for:  .normal)
        btn.layer.cornerRadius = 8
        btn.addTarget(self, action: #selector(gotWorkspace), for: .touchUpInside)
        return btn
    }()
    override func loadView() {
        super.loadView()
        view.addSubview(containerView)
        view.addSubview(btn)
        
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        containerView.addSubview(imageView)
        containerView.addSubview(welcomeView)
        
        
//        imageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        welcomeView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor,constant: 10).isActive = true
        welcomeView.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        welcomeView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        
        btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -20).isActive = true
        btn.widthAnchor.constraint(equalToConstant: 200).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - action
    @objc private func gotWorkspace(){
//        print("Hello world")
        
        let vc = WelcomeViewController()
//        let navc = UINavigationController(rootViewController: vc)
        let navc = UINavigationController(rootViewController: vc)
        navc.modalPresentationStyle = .overFullScreen
        present(navc, animated: true)
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
