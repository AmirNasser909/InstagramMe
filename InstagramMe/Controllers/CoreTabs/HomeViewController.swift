//
//  ViewController.swift
//  InstagramMe
//
//  Created by MacBook Air on 08/10/2023.
//

import UIKit
import FirebaseAuth
class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        handleNotAuthenticated()
    }
    private func handleNotAuthenticated(){
        // Check auth status
        if Auth.auth().currentUser == nil {
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }
    
}
