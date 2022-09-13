//
//  ProfileHeaderView.swift
//  NavigTest
//
//  Created by Mac on 18.07.2022.
//

import UIKit


class ProfileHeaderView: UIView {
   
private lazy var profileView = UIImageView(frame: CGRect(x: 16, y: 96, width: 100, height: 100))
private lazy var name = UILabel (frame: CGRect(x: 137, y: 101, width: 250, height: 25))
private lazy var setStatus = UITextField (frame:CGRect(x:137, y:160, width: 150, height: 40))
private lazy var changeStatusButton = UIButton(frame: CGRect(x: 16, y: 212, width: 360, height: 50))
private lazy var status = UILabel(frame:CGRect(x: 137, y: 133, width: 350, height: 25))
private lazy var changedText: String = ""
  
      override init(frame: CGRect){
        super.init(frame: frame)
    
        profileView.backgroundColor = .gray
        profileView.image = UIImage(named: "A330-300.jpg")
        profileView.layer.borderColor = UIColor.white.cgColor
        profileView.layer.borderWidth = 3.0
        profileView.layer.cornerRadius = 50
        profileView.layer.masksToBounds = true
        self.addSubview(profileView)
          
          name.backgroundColor = .lightGray
          name.text = "Пилот квадрокоптера"
          name.font.withSize(18)
          name.font = UIFont(name:"Tahoma", size: 18.0)
          self.addSubview(name)
     
          setStatus.placeholder = "Задайте статус"
          setStatus.backgroundColor = .white
          setStatus.layer.cornerRadius = 12
          setStatus.layer.borderWidth = 1
          setStatus.layer.borderColor = CGColor(red: 0, green: 0, blue: 255, alpha: 9)
          setStatus.font = UIFont.systemFont(ofSize: 15)
          setStatus.keyboardType = UIKeyboardType.default
          setStatus.returnKeyType = UIReturnKeyType.done
          setStatus.clearButtonMode = UITextField.ViewMode.whileEditing;
          setStatus.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
          setStatus.addTarget(self, action: #selector(editingChanged), for: UIControl.Event.editingChanged)
          self.addSubview(setStatus)
    
          changeStatusButton.backgroundColor = .blue
          changeStatusButton.layer.cornerRadius = 4
          changeStatusButton.titleEdgeInsets.left = 16
          changeStatusButton.titleEdgeInsets.right = 16
          changeStatusButton.setTitle("Изменить статус", for: .normal)
          changeStatusButton.setTitleColor(.white, for: .normal)
          changeStatusButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
          changeStatusButton.layer.shadowRadius = 4
          changeStatusButton.layer.shadowColor = UIColor.black.cgColor
          changeStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
          changeStatusButton.layer.shadowOpacity = 0.7
          changeStatusButton.layer.masksToBounds = false
          changeStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
          changeStatusButton.isUserInteractionEnabled = true
          self.addSubview(changeStatusButton)
          
          status.backgroundColor = .lightGray
          status.text = "Ожидаю лучших времен"
          status.textColor = .gray
          self.addSubview(status)
}
   
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func editingChanged(textField: UITextField) {
        changedText = setStatus.text!
    }
    
    @objc func buttonPressed(sender: UIButton) {
        status.text = changedText
    }
}

