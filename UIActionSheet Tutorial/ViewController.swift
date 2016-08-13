//
//  ViewController.swift
//  UIActionSheet Tutorial
//
//  Created by Michael Henry on 3/28/16.
//  Copyright © 2016 Digital Javelina, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var actionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func activateActionSheet(sender: AnyObject) {
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .ActionSheet)
        
        let action1 = UIAlertAction(title: "Button 1", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.actionLabel.text = "Button 1 was pressed"
        })
        
        let action2 = UIAlertAction(title: "Button 2", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.actionLabel.text = "Button 2 was pressed"
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction) -> Void in
            self.actionLabel.text = "Cancel was pressed"
        })
        
        alertController.addAction(action1)
        alertController.addAction(action2)
        alertController.addAction(cancelAction)
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }

}

