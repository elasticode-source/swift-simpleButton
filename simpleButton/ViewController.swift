//
//  ViewController.swift
//  simpleButton
//
//  Created by Tomer on 20/1/15.
//  Copyright (c) 2015 elasticode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        NSNotificationCenter .defaultCenter() .addObserver(self, selector:"finishedSyncNotification:", name: "finishedSync", object: nil)
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        NSNotificationCenter .defaultCenter() .removeObserver(self, name: "finishedSyncNotification:", object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func finishedSyncNotification(notification: NSNotification)
    {
        let text:NSString = ElastiCode.valueForDynamicObject("Button text") as NSString
        let btn = UIButton .buttonWithType(UIButtonType.System) as UIButton
        btn.frame = CGRectMake(125, 200, 125, 50)
        
        btn.backgroundColor = UIColor.greenColor()
        btn.setTitle(text, forState: UIControlState.Normal)
        btn.addTarget(self, action: "buttonClicked", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
        
        switch(ElastiCode .stateIndexForCase("First Button")){
        case 1:
            btn.backgroundColor = UIColor.cyanColor();
            break;
        case 2:
            btn.backgroundColor = UIColor.magentaColor();
            break;
        default:
            btn.backgroundColor = UIColor.yellowColor();
            break;
        }
        ElastiCode .takeSnapShot("First Button")
        ElastiCode .takeSnapShot("Button text")
    }
    
    func buttonClicked()
    {
        ElastiCode.goalReached("First Button")
        ElastiCode.dynamicObjectGoalReached("Button text")
    }
}

