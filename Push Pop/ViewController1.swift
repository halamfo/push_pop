//
//  ViewController1.swift
//  login
//
//  Created by Dân Tơi on 5/25/16.
//  Copyright © 2016 Dân Tơi. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    @IBOutlet weak var txtuser: UITextField!
    @IBOutlet weak var txtpassword: UITextField!

    
    var users = ["admin":"admin", "tungnguyen":"123"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btndangnhap(sender: AnyObject) {
        if (txtuser.text == "") || (txtpassword.text == "") {
            print  ("user và pass ko đc trống")
        }
        else{
            if let password = users[txtuser.text!]
            {
                if password == txtpassword.text{
                    let view3 = self.storyboard?.instantiateViewControllerWithIdentifier("view3") as! ViewController2
                    self.navigationController?.pushViewController(view3, animated: true)
                    print ("Đăng nhập thành công")
                }
                else{
                    print ("Sai mật khẩu")
                }
            }
            else{
                print ("Tài khoản ko tồn tại")
            }
        }
    }
}


















