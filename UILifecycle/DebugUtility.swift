//
//  DebugUtility.swift
//  UILifecycle
//
//  Created by rabbit on 2020/05/18.
//  Copyright © 2020 rabbit. All rights reserved.
//

import UIKit
import os.log

class DebugUtility {

    static let logger = OSLog(subsystem: "\(String(describing: Bundle.main.bundleIdentifier!))", category: "\(Bundle.main.infoDictionary![kCFBundleNameKey as String] as! String)")

    static func printEnvironment() {
        os_log("* Environment : model  = %s",  log: logger, type: .info, UIDevice.modelName)
        os_log("* Environment : system = %s",  log: logger, type: .info, "\(UIDevice.current.systemName) \(UIDevice.current.systemVersion)")
    }
    
    static func printStateAndLocation(_ state: UIApplication.State, object: NSObject, function: String, line: Int) {
        let className = "\(String(describing: object).split(separator: ".")[1].split(separator: ":")[0])"
        var stateString = ""
        switch state {
            case .active:       stateString = "Active"
            case .background:   stateString = "Backgound"
            case .inactive:     stateString = "Inactive"
            default:            stateString = "Unknown"
        }
        os_log("<%-10s> (%-16s) %s, line = %d",  log: logger, type: .info , stateString, className, function, line)

    }
}

