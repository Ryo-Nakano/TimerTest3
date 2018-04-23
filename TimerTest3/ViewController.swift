//
//  ViewController.swift
//  TimerTest3
//
//  Created by Ryohei Nanano on 2018/04/23.
//  Copyright © 2018年 GeekSalon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()//Timerクラスをインスタンス化→変数timerに格納→Timerクラスのメソッドが使えるようになる！
    
    var isRunning: Bool = false//メソッドが稼働しているかどうかを判断するフラグ(初期値はfalse)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    //このままだと、『ボタン押すたびにこのメソッド呼ばれちゃう』から、true,falseのフラグつけよう。
    @IBAction func timerMethod(){
        if isRunning == false {
            print("START!!!")
//            let timer :Timer//Timer型の変数timerを宣言
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(printRandomNumber), userInfo: nil, repeats: true)
            isRunning = true
        }
        else{
            print("STOP!!!")
            timer.invalidate()//timerの無効化
            isRunning = false
        }
    }
    
    @objc func printRandomNumber(){
        print(arc4random_uniform(100))
    }

}

