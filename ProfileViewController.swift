//
//  ProfileViewController.swift
//  NavigTest
//
//  Created by Mac on 08.07.2022.
//

import UIKit


class ProfileViewController: UIViewController {
 
   var profile: ProfileHeaderView!
      
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        profile = ProfileHeaderView(frame: CGRect(x: 0, y: 0, width: 390, height: 500))
          self.view.addSubview(profile)
   
    }
}


