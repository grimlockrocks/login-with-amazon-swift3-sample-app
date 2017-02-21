//
//  BlockViewController.swift
//  LWA Sample App
//
//  Created by Tom on 2/20/17.
//

import UIKit
import LoginWithAmazon

class BlockViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var logoutBtn: UIButton!

    
    @IBAction func onClickLoginBtn(_ sender: Any) {
        let request = AMZNAuthorizeRequest()
        request.scopes = [AMZNProfileScope.profile()]
        request.interactiveStrategy = AMZNInteractiveStrategy.never
        
        AMZNAuthorizationManager.shared().authorize(request) { (authResult, userDidCancel, error) in
            if ((error) != nil) {
                print(error!)
            } else if (userDidCancel) {

            } else {
                // Authentication was successful.
                //let accessToken = authResult?.token;
                //let user = authResult?.user;
                //let userID = user?.userID;
                
                print("Login successfully!")
                DispatchQueue.main.async(execute: { () -> Void in
                    self.loginBtn.isEnabled = false
                    self.logoutBtn.isEnabled = true
                })
            }
        }
    }
    
    @IBAction func onClickLogoutBtn(_ sender: Any) {

        AMZNAuthorizationManager.shared().signOut { (error) in
            if((error) != nil) {
                print("error signing out: \(error)")
            } else {
                print("Logout successfully!")
            }
            DispatchQueue.main.async(execute: { () -> Void in
                self.loginBtn.isEnabled = true
                self.logoutBtn.isEnabled = false
            })
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
