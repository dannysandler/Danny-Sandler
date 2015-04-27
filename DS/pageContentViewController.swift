//
//  pageContentViewController.swift
//  DS
//
//  Created by Danny Sandler on 4/20/15.
//  Copyright (c) 2015 Danny Sandler. All rights reserved.
//

import UIKit

class pageContentViewController: UIViewController {

    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var bkImageView: UIImageView!
    
    var pageIndex: Int?
    var titleText : String!
    var imageName : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bkImageView.image = UIImage(named: imageName)
        self.heading.text = self.titleText
        self.heading.alpha = 0.1
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            self.heading.alpha = 1.0
        // Do any additional setup after loading the view.
        })}
    
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
