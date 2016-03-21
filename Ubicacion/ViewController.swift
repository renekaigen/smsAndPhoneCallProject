//
//  ViewController.swift
//  Ubicacion
//
//  Created by René Soto Lira on 21/03/16.
//  Copyright © 2016 AplicacionesPaleta. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController , MFMessageComposeViewControllerDelegate {
    //importante hacer que herede el MFMessageComposeViewControllerDelegate (ver línea de arriba)
    func messageComposeViewController(controller: MFMessageComposeViewController,
        didFinishWithResult result: MessageComposeResult) {
            // Check the result or perform other tasks.
            
            // Dismiss the mail compose view controller.
            switch result.rawValue {
            case MessageComposeResultCancelled.rawValue:
                NSLog("cancelled")
            case MessageComposeResultFailed.rawValue:
                NSLog("cancelled")
            case MessageComposeResultSent.rawValue:
                NSLog("cancelled")
            default:
                NSLog("default...")
            }
            controller.dismissViewControllerAnimated(true, completion: nil)
            
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonSendSms_1(sender: UIButton) {
        sendSMS(1)
    }

    @IBAction func buttonSendSms_2(sender: UIButton) {
        sendSMS(2)
    }
    @IBAction func buttonSendSms_3(sender: UIButton) {
        sendSMS(3)
    }
    @IBAction func buttonSendSms_4(sender: UIButton) {
        sendSMS(4)
    }
    @IBAction func buttonSendSms_5(sender: UIButton) {
        sendSMS(5)
    }
    @IBAction func buttonSendSms_6(sender: UIButton) {
        sendSMS(6)
    }
    @IBAction func doPhoneCall(sender: UIButton) {
        let busPhone :String
        busPhone = "8331038440"
        if let url = NSURL(string: "tel://\(busPhone)") {
            print("Si es valido el numero")
            UIApplication.sharedApplication().openURL(url)
        }

        
    }
    
    
    func sendSMS(kind :Int)
    {
        /*si los sms van a ser diferentes o el numero pues , sacarlo por un switch de cual kind es*/
        if !MFMessageComposeViewController.canSendText() {
            print("SMS services are not available")
        }
        else{
            let composeVC = MFMessageComposeViewController()
            composeVC.messageComposeDelegate = self
            // Configure the fields of the interface.
            composeVC.recipients = ["8332806817"]
            composeVC.body = "P0O6S"
            
            // Present the view controller modally.
            self.presentViewController(composeVC, animated: true, completion: nil)
        }

    }
}

