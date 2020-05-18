//
//  DebugUtility.swift
//  UILifecycle
//
//  Created by rabbit on 2020/05/18.
//  Copyright © 2020 rabbit. All rights reserved.
//

import UIKit

class DebugUtility {

    static let dateTimeForm = DateFormatter()

    static func printEnvironment() {
        print("Environment : ")
        print("\tmodule name = \(UIDevice.modelName)")
        print("\tsystem name = \(UIDevice.current.systemName)")
        print("\tsystem version = \(UIDevice.current.systemVersion)")
    }
    
    static func printThisLocation(object: NSObject, function: String, line: Int) {
        dateTimeForm.dateFormat = "yyyy/MM/dd HH:mm:ss"
        dateTimeForm.locale = Locale.current

        print("Called at \(dateTimeForm.string(from: Date())) : [\(String(describing: object).split(separator: ".")[1].split(separator: ":")[0])] " + function + ", line = \(line)")
    }
}

