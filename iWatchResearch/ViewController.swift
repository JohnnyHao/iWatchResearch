//
//  ViewController.swift
//  iWatchResearch
//
//  Created by Tonny.hao on 3/16/15.
//  Copyright (c) 2015 Tonny.hao. All rights reserved.
//

import UIKit

let kWatchLableKey = "kWatchLableKey"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //NSUserDefaults *sharedDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.xxx"];
        
        var sharedDefaults = NSUserDefaults(suiteName: "group.iWatchResearch")
        
        sharedDefaults?.setValue("Shared From Parent iPhone", forKey: kWatchLableKey)
        sharedDefaults?.synchronize()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

