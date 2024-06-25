//
//  ViewController.swift
//  SAIDEMO
//
//  Created by designer1的mac on 2024/6/25.
//

import UIKit
import SatorSDK
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        SAISDK.shared.setToken("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJuYmYiOjE3MDQ3ODYzMjQsImNoYW5uZWxNZW1iZXJJZCI6MTY1MjAsImV4cCI6MTcwNzM3ODMyNCwiaWF0IjoxNzA0Nzg2MzI0LCJjaGFubmVsSWQiOjYsIm1lbWJlcklkIjozMX0.QdEtP7_zYSgwzQnKF89JlHeJyaDFeXdrSwZ7JO1gvcA")
//        SAISDK.shared.setToken("")
        SAISDK.shared.start()
        
        SAISDK.shared.imageCallback = { image in
            print("Received image: \(image)")
        }
        
    }

}

