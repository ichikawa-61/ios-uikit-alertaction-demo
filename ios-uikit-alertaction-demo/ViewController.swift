//
//  ViewController.swift
//  ios-uikit-alertaction-demo
//
//  Created by Manami Ichikawa on 5/4/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        

    }

    
    @IBAction func showAction(_ sender: Any) {
        
        //① UIAlertController のインスタンス生成
        let alert: UIAlertController = UIAlertController(title: "アラート表示", message: "Alert テスト", preferredStyle:  UIAlertControllerStyle.alert)
        
        // ② Actionの設定
        // Action初期化時にタイトル, スタイル, ボタンが押された時に実行される処理
     
        // OKボタン
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK",
                                                         style: UIAlertActionStyle.default,
                                                       handler:{
                                                       (action: UIAlertAction!) -> Void in
            print("OK")
        })
        // キャンセルボタン
        let cancelAction: UIAlertAction = UIAlertAction(title: "キャンセル",
                                                        style: UIAlertActionStyle.cancel,
                                                      handler:{
                                                      (action: UIAlertAction!) -> Void in
            print("Cancel")
        })
        //　赤字
        let destructiveAction: UIAlertAction = UIAlertAction(title: "消去",
                                                             style: UIAlertActionStyle.destructive,
                                                             handler:{
                                                                (action: UIAlertAction!) -> Void in
            print("delete")
        
        })
        
        // ③ UIAlertControllerにActionを追加
        alert.addAction(cancelAction)
        alert.addAction(defaultAction)
        alert.addAction(destructiveAction)
        
        // ④ Alertを表示
        present(alert, animated: true, completion: nil)

    }
    
    

}

