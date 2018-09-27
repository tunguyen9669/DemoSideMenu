//
//  NavigationController.swift
//  Timekeeper
//
//  Created by Đinh Ngọc Vũ on 8/24/18.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation
import UIKit
import LGSideMenuController

class NavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationBar.isTranslucent = true
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var prefersStatusBarHidden: Bool {
        return UIInterfaceOrientationIsLandscape(UIApplication.shared.statusBarOrientation)
            && UI_USER_INTERFACE_IDIOM() == .phone
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return ((UIApplication.shared.delegate as? AppDelegate)?.sideMenu?.isLeftViewVisible)! ? .fade : .slide
    }
}
