//
//  InterfaceController.swift
//  iWatchResearch WatchKit Extension
//
//  Created by Tonny.hao on 3/16/15.
//  Copyright (c) 2015 Tonny.hao. All rights reserved.
//

import WatchKit
import Foundation


let kWatchLableKey = "kWatchLableKey"


class InterfaceController: WKInterfaceController {
    
    var dataObjects:NSArray = [MyDataObject(),MyDataObject(),MyDataObject(),MyDataObject(),MyDataObject(),MyDataObject()]
    
    @IBOutlet weak var table:WKInterfaceTable!
    @IBOutlet weak var titleLable:WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        var sharedDefaults = NSUserDefaults(suiteName: "group.iWatchResearch")
        var lableTitleStr = sharedDefaults?.valueForKey(kWatchLableKey) as String?
        if lableTitleStr != nil {
            titleLable.setText(lableTitleStr)
        }
        
        self.configureTableWithtData(self.dataObjects)
        
        // Configure interface objects here.
    }
    
    func configureTableWithtData(dataObjects: NSArray) {
        self.table .setNumberOfRows(dataObjects.count, withRowType: "mainRowType")
        
        var index = 0
        for obj in dataObjects {
            var theRow = self.table.rowControllerAtIndex(index) as MainRowType
            theRow.rowDescription.setText((obj as MyDataObject).text)
            
            var iconImg = (obj as MyDataObject).image
            theRow.rowIcon.setImage(iconImg)
            index += 1
        }
    }
    
    
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
            println("\(rowIndex) row is pressed")
    }
    

    
    @IBAction func doMenuItemAction() {
        println("menu is pressed")
    }
    

    override func handleUserActivity(userInfo: [NSObject : AnyObject]?) {
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
