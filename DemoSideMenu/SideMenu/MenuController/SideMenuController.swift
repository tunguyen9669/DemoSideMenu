//
//  SideMenuController.swift
//  DemoSideMenu
//
//  Created by admin on 9/27/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
import LGSideMenuController

class SideMenuController: LGSideMenuController {
    
    fileprivate var firstNav: NavigationController?
    // MARK: Life cyle
    override func viewDidLoad() {
        super .viewDidLoad()
        setupLeftMenu()
    }
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(true)
    }
    //MARK: setup
    func setupLeftMenu() {
        let leftMenu = LeftMenuViewController(nibName: "LeftMenuViewController", bundle: nil)
        leftViewController = leftMenu
        leftViewPresentationStyle = .slideAbove
        let uiScreen = UIScreen.main.bounds
        leftViewWidth = max(round(min((uiScreen.width), (uiScreen.height)) * 0.8), 310)
    }
    func printIdenfier() {
        print("Side Menu Controller is here")
    }
    override var isLeftViewStatusBarHidden: Bool {
        get {
            return super.isLeftViewStatusBarHidden
        }
        
        set {
            super.isLeftViewStatusBarHidden = newValue
        }
    }
    fileprivate func getFirst() -> NavigationController? {
        if firstNav != nil {
            return firstNav
        } else {
            let viewcontroller = FirstViewController(nibName: "FirstViewController",
                                                                   bundle: nil)
            firstNav = NavigationController(rootViewController: viewcontroller)
            return firstNav
        }
    }
    func openFirstViewController() {
        rootViewController = getFirst()
        hideLeftView(animated: true, delay: 0.0, completionHandler: nil)
    }
}
