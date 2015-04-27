//
//  photo2ViewController.swift
//  DS
//
//  Created by Danny Sandler on 4/16/15.
//  Copyright (c) 2015 Danny Sandler. All rights reserved.
//

import UIKit

class photo2ViewController: UIViewController {
    
    @IBOutlet weak var menuButton:UIBarButtonItem!, webView:UIWebView!
    
    let url = "https://www.youtube.com/embed/Zb5IH57SorQ"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let requestURL = NSURL(string:url)
        let request = NSURLRequest(URL: requestURL!)
        webView.loadRequest(request)
        
        
        
        
/*
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
        */
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
