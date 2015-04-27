//
//  photoViewController.swift
//  DS
//
//  Created by Danny Sandler on 4/14/15.
//  Copyright (c) 2015 Danny Sandler. All rights reserved.
//

import UIKit

class photoViewController: UIViewController {
    
    @IBOutlet weak var menuButton:UIBarButtonItem!, webView2:UIWebView!
   // let url = "https://www.google.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let pdf = NSBundle.mainBundle().URLForResource("W4-2015", withExtension: "pdf", subdirectory: nil, localization: nil)  {
            let req = NSURLRequest(URL: pdf)
            //let webView = UIWebView(frame: CGRectMake(20,20,self.view.frame.size.width-200,self.view.frame.size.height-300))
            webView2.loadRequest(req)
            self.view.addSubview(webView2)
        }
      //  let requestURL = NSURL(string:url)
     //   let request = NSURLRequest(URL: requestURL!)
     //   webView2.loadRequest(request)
        
        
        
        
    if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        
        
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
