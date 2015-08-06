//
//  ViewController.swift
//  Count
//
//  Created by Akiyuki Kamiura on 2015/08/02.
//  Copyright (c) 2015年 Akiyuki Kamiura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textColorJudge(var num: Int){
        if num >= 10 {
            label.textColor = UIColor.redColor()
        } else if num <= -10 {
            label.textColor = UIColor.blueColor()
        } else {
            label.textColor = UIColor.whiteColor()
        }
    }

    @IBAction func plus(){
        number += 1
        textColorJudge(number)
        label.text = String(number)
    }

    @IBAction func minus(){
        number -= 1
        textColorJudge(number)
        label.text = String(number)
    }
    
    @IBAction func clear(){
        number = 0
        textColorJudge(number)
        label.text = String(number)
    }
}

