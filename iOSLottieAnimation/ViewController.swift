//
//  ViewController.swift
//  iOSLottieAnimation
//
//  Created by 高橋博司 on 2018/06/23.
//  Copyright © 2018年 takahashi. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //アニメーションのインスタンス
        let animation = LOTAnimationView(name: "laugh.json")
        
        //表示位置を設定
        animation.frame = CGRect(x: 150, y: 100, width: 100, height: 100)
        
        //パラメータの一つ、アニメーションをループする
        animation.loopAnimation = true
        
        //#view(画面)上にアニメーションを追加
        view.addSubview(animation)
        
        //アニメーションの開始
        animation.play()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

