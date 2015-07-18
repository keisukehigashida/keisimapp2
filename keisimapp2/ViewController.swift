//
//  ViewController.swift
//  keisimapp2
//
//  Created by 東田圭介 on 2015/07/17.
//  Copyright (c) 2015年 東田圭介. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.addGestureRecognizer(myTap) // 割り勘アプリで追記
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapbtn(sender: UIButton) {
        var twitterVC = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        twitterVC.setInitialText("つぶやくよ")
        presentViewController(twitterVC, animated: true, completion:nil)
    }
    
    @IBAction func returnMenu(segue: UIStoryboardSegue){
    }

    // 割り勘計算アプリ　http://ilog.hateblo.jp/entry/2015/03/30/203044
    
    @IBOutlet weak var payment: UITextField!
    @IBOutlet weak var persons: UITextField!
    @IBOutlet weak var answer: UILabel!
    
    
    @IBOutlet var myTap: UITapGestureRecognizer!
    var message: String!
    
    @IBAction func tapScreen(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    // 1人あたりの金額の計算と結果表示
    @IBAction func calcAverage(sender: UIButton) {
        var sum = payment.text.toInt()
        var number = persons.text.toInt()
        
        println(sum! / number!)
        answer.text = "\((sum! / number!).description)円"
        message = "\(sum! / number!)円を準備してください"
    }
    
    //　リセット
    @IBAction func resetValue(sender: UIButton) {
        payment.text = ""
        persons.text = ""
        answer.text = ""
        message = ""
    }
    
}

