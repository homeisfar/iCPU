//
//  AppDelegate.swift
//  iCPU
//
//  Created by Ali H on 4/3/16.
//  Copyright © 2016 Ali H. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBAction func quit(sender: NSMenuItem) {
        exit(0)
    }
    
    @IBOutlet weak var statusMenuController: StatusMenuController!
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        NSTimer.scheduledTimerWithTimeInterval(4, target: self, selector: "update", userInfo: nil, repeats: true)
    }
    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    func update() {
        statusMenuController.update()
//        let x = 5
//        var l = x + 5
//        l = l + l
    }
    
}

