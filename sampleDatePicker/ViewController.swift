//
//  ViewController.swift
//  sampleDatePicker
//
//  Created by yuka on 23/10/2017.
//  Copyright © 2017 yuka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //DateFormatterを使って文字型から日付型に変換する
        let df = DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
       
        //選択可能な最小値を決定(BCD400 1にしかならなかった)
        myDatePicker.minimumDate = df.date(from: "-0400/01/01")
        //選択可能な最大値を決定(2016/12/31)
        myDatePicker.maximumDate = df.date(from:"2016/12/31")
        //初期値
        myDatePicker.date = df.date(from:"2017/10/01")!
        
        
    }
    
    //選択された日付が変わった時発動
    @IBAction func changeDate(_ sender: UIDatePicker) {
        print(sender.date)

        let df = DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        
        //時差補正　日本時間に設定
        df.locale = Locale(identifier: "ja_JP")
        
        print(df.string(from: sender.date))

        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

