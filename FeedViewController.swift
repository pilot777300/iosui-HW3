//
//  FeedViewController.swift
//  NavigTest
//
//  Created by Mac on 08.07.2022.
//

import UIKit

class FeedViewController: UIViewController {
    var post = Post(title: "Мой Пост")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray2
        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
                button.backgroundColor = .blue
                button.layer.cornerRadius = 12
                button.setTitle("Перейти на пост", for: .normal)
                button.setTitleColor(.lightGray, for: .normal)
                button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
                button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
                button.translatesAutoresizingMaskIntoConstraints = true
        self.view.addSubview(button)
    }
    
    @objc private func buttonAction() {
        let postViewController = PostViewController()
        postViewController.titlePost = post.title
        self.navigationController?.pushViewController(postViewController, animated: true)

            }
    }
