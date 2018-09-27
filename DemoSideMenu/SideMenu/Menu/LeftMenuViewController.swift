//
//  LeftMenuViewController.swift
//  DemoSideMenu
//
//  Created by admin on 9/27/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class LeftMenuViewController: UIViewController {
    
    @IBAction func goToOne(_ sender: Any) {
        guard let sideMenu = (UIApplication.shared.delegate as? AppDelegate)?.getSideMenu() else {
            return
        }
        let firstView = FirstViewController()
        sideMenu.printIdenfier()
        sideMenu.openFirstViewController()
        
    }
    
    @IBAction func gotoSecond(_ sender: Any) {
    }
    @IBAction func gotoThird(_ sender: Any) {
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
