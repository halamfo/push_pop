//
//  ViewController.swift
//  Push Pop
//
//  Created by Dân Tơi on 6/4/16.
//  Copyright © 2016 Dân Tơi. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbltext: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var btn: UIButton!
    @IBAction func action_btn(sender: AnyObject) {
        let v2 = self.storyboard?.instantiateViewControllerWithIdentifier("v2") as! ViewController1
        self.navigationController?.pushViewController(v2, animated: true)
    }
    override func viewDidLoad() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        super.viewDidLoad()
        lbltext.alpha = 0
        img.alpha = 0
        btn.alpha = 0
    }
    override func viewWillAppear(animated: Bool){
        super.viewWillAppear(animated)
        UIView.animateWithDuration(4, animations: {
            self.img.alpha = 1
            })
        {
            (finished) in
            UIView.animateWithDuration(3, animations: {
                self.lbltext!.center = CGPointMake(self.img.center.x, 80)
                self.lbltext!.alpha = 1
                })
            {
                (finished) in
                UIView.animateWithDuration(3, animations: {
                    self.btn!.center = CGPointMake(self.img.center.x, 450)
                    self.btn!.alpha = 1
                })
            }
}
}
}
