//
//  ViewController.swift
//  DemoSideMenu
//
//  Created by admin on 9/27/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func onGotoMenu(_ sender: Any) {
        (UIApplication.shared.delegate as? AppDelegate)?.createSideMenu()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

