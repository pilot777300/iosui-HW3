//
//  PostViewController.swift
//  NavigTest
//
//  Created by Mac on 08.07.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var titlePost: String = "First post"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
                self.navigationItem.title = "Мой пост"
        let logoutBarButtonItem = UIBarButtonItem(title: "Открыть Info", style: .done, target: self, action: #selector(logoutUser))
           self.navigationItem.rightBarButtonItem  = logoutBarButtonItem
    }
    
    @objc func logoutUser(){
        let infoViewController = InfoViewController()
        self.navigationController?.pushViewController(infoViewController, animated: true)
    }


}
