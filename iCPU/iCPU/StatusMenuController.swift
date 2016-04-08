//
//  CPUMenu.swift
//  iCPU
//
//  Created by Ali H on 4/3/16.
//  Copyright © 2016 Ali H. All rights reserved.
//

import Cocoa

var sys = System()
class StatusMenuController: NSObject {
    
    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(NSVariableStatusItemLength);

    override init() {
    }
    
    override func awakeFromNib() {
        statusItem.menu = statusMenu
        let cpuUsage = sys.usageCPU()
        statusItem.title = "\(Int(cpuUsage.system)+Int(cpuUsage.user))%"
    }
    
    func callback(sender: AnyObject) {
    }
    
    func update() {
        let cpuUsage = sys.usageCPU()
        print(cpuUsage.system)
//        statusItem.title = "\(Int(cpuUsage.system)+Int(cpuUsage.user))%"
    }
    
}
