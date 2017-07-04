//
//  ViewController.swift
//  testRSA
//
//  Created by KIRIBAGUETTE on 03/07/2017.
//  Copyright © 2017 KIRIBAGUETTE. All rights reserved.
//

import UIKit
import SwiftyRSA

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let publicKey = try! PublicKey(pemEncoded: "YOUR_KEY")
        let clear = try! ClearMessage(string: "YOUR_TEXT", using: .utf8)
        let encrypted = try! clear.encrypted(with: publicKey, padding: .PKCS1)
        
        // Then you can use:
        let data = encrypted.data
        let base64String = encrypted.base64String
        print(base64String)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

