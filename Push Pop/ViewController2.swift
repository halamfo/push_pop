//
//  ViewController3.swift
//  Push Pop
//
//  Created by Dân Tơi on 7/1/16.
//  Copyright © 2016 Dân Tơi. All rights reserved.
//


import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var lblso1: UILabel!
    @IBOutlet weak var lblso2: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var lbldung: UILabel!
    @IBOutlet weak var lblsai: UILabel!
    
    var countsai = 0
    var countdung = 0
    var ketqua: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRandom()
    }
    
    @IBAction func btnaction1(sender: UIButton) {
        if btn1.currentTitle == String(ketqua) {
            fnccountdung()
        }
        else{
            fnccountsai()
        }
        setRandom()
    }
    @IBAction func btnaction2(sender: UIButton) {
        if btn2.currentTitle == String(ketqua) {
            fnccountdung()
        }
        else{
            fnccountsai()
        }
        setRandom()
    }
    @IBAction func btnaction3(sender: UIButton) {
        if btn3.currentTitle == String(ketqua) {
            fnccountdung()
        }
        else{
            fnccountsai()
        }
        setRandom()
    }
    
    func setRandom(){
        let random1 = Int(arc4random_uniform(4)) + 1
        //random ra so tu 1 den 4
        let random2 = Int(arc4random_uniform(4)) + 1
        print("\(random1) \(random2)")
        lblso1.text = String(random1)
        lblso2.text = String(random2)
        setResult(random1, randomB: random2)
        ketqua = random1+random2
    }
    
    func setResult(randomA: Int, randomB: Int){
        var array = [randomA, randomB, sum(randomA, p2: randomB)]
        let randomindex1 = Int(arc4random_uniform(UInt32(array.count)))
        btn1.setTitle(String(array[randomindex1]), forState: .Normal)
        
        
        // neu btn1 == randomA
        if btn1.currentTitle == String(randomA) {
            array.removeAtIndex(0)
            let randomindex2 = Int(arc4random_uniform(UInt32(array.count)))
            btn2.setTitle(String(array[randomindex2]), forState: .Normal)
            if btn2.currentTitle == String(randomB){
                btn3.setTitle(String(array[1]), forState: .Normal)
            }
            else {
                btn3.setTitle(String(array[0]), forState: .Normal)
            }
        }
            //neu btn1 == randomB
        else{
            if btn1.currentTitle == String(randomB){
                array.removeAtIndex(1)
                let randomindex2 = Int(arc4random_uniform(UInt32(array.count)))
                btn2.setTitle(String(array[randomindex2]), forState: .Normal)
                if btn2.currentTitle == String(randomA){
                    btn3.setTitle(String(array[1]), forState: .Normal)
                }
                else{
                    btn3.setTitle(String(array[0]), forState: .Normal)
                }
            }
                // neu btn1 == ket qua
            else{
                array.removeAtIndex(2)
                let randomindex2 = Int(arc4random_uniform(UInt32(array.count)))
                btn2.setTitle(String(array[randomindex2]), forState: .Normal)
                if btn2.currentTitle == String(randomA){
                    btn3.setTitle(String(array[1]), forState: .Normal)
                }
                else{
                    btn3.setTitle(String(array[0]), forState: .Normal)
                }
            }
        }
        
        
    }// end func setResult()
    
    func sum(p1: Int, p2: Int) ->  Int //tinh tong
    {
        return p1+p2
    }
    
    func fnccountdung(){                //dem so lan doan dung
        countdung = countdung + 1
        lbldung.text = ("Right \(String(countdung))")
    }
    
    func fnccountsai(){                 //dem so lan doan sai
        countsai = countsai + 1
        lblsai.text = ("Wrong \(String(countsai))")
    }
}












