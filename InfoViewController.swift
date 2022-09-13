//
//  InfoViewController.swift
//  NavigTest
//
//  Created by Mac on 08.07.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        self.navigationItem.title = "Info"
        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
                button.backgroundColor = .systemGray
                button.layer.cornerRadius = 12
                button.setTitle("Показать Alert", for: .normal)
                button.setTitleColor(.systemGray5, for: .normal)
                button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
                button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
                button.translatesAutoresizingMaskIntoConstraints = true
        self.view.addSubview(button)
    }
    
    @objc func showAlert () {
    
        let alert = UIAlertController(title: "Поздравляю!", message: "Домашняя работа готова", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Поставить зачет", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
