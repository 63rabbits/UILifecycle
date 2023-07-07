//
//  ViewController.swift
//  UILifecycle
//
//  Created by rabbit on 2020/05/17.
//  Copyright © 2020 rabbit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // If you use Interface Builder to create your views and initialize the view controller, you must not override this method.
    //            ^^^^^^^^^^^^^^^^^                                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    //    override func loadView() {
    //        DebugUtility.printThisLocation(object: self, function: #function, line: #line)
    //    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        DebugUtility.printStateAndLocation(UIApplication.shared.applicationState, object: self, function: #function, line: #line)
    }

    override func viewWillAppear(_ animated: Bool) {
        DebugUtility.printStateAndLocation(UIApplication.shared.applicationState, object: self, function: #function, line: #line)
    }

    override func viewWillLayoutSubviews() {
        DebugUtility.printStateAndLocation(UIApplication.shared.applicationState, object: self, function: #function, line: #line)
    }

    override func viewDidLayoutSubviews() {
        DebugUtility.printStateAndLocation(UIApplication.shared.applicationState, object: self, function: #function, line: #line)
    }

    override func viewDidAppear(_ animated: Bool) {
        DebugUtility.printStateAndLocation(UIApplication.shared.applicationState, object: self, function: #function, line: #line)
    }





    override func viewWillDisappear(_ animated: Bool) {
        DebugUtility.printStateAndLocation(UIApplication.shared.applicationState, object: self, function: #function, line: #line)
    }

    override func viewDidDisappear(_ animated: Bool) {
        DebugUtility.printStateAndLocation(UIApplication.shared.applicationState, object: self, function: #function, line: #line)
    }

}

