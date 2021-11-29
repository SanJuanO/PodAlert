//
//  NotificationAlertViewController.swift
//  Heartland Splenda
//
//  Created by Edgar Gerardo Flores Lopez on 05/10/20.
//  Copyright © 2020 Edgar Gerardo Flores Lopez. All rights reserved.
//

import UIKit

class NotificationAlertViewController: UIViewController {
    
    private lazy var alertView: AlertView = {
        let cView = AlertView()
        cView.translatesAutoresizingMaskIntoConstraints = false
        cView.iconView.image = UIImage(named: "notificationAlert")
        cView.dismissButton.setTitle("Ok", for: .normal)
        cView.dismissButton.addTarget(self, action: #selector(dismissController),
                                      for: .touchUpInside)
        return cView
    }()
    
    @objc func dismissController() {
       self.dismiss(animated: true, completion: nil)
    }
    
    func configure(notification: NotificationsMapper) {
        alertView.titleLabel.text = notification.title
        alertView.messageTextView.text = notification.body
    }
    
     func setupController() {
        view.backgroundColor = UIColor.black
        view.addSubview(alertView)
        
        alertView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        alertView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        alertView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
         }
    
    
    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        view.endEditing(true)
        super.dismiss(animated: flag, completion: completion)
    }
    @objc func dismissMyKeyboard() {
//endEditing causes the view (or one of its embedded text fields) to resign the first responder status.
//In short- Dismiss the active keyboard.
        view.endEditing(true)
    }

}
