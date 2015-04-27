//
//  Video.swift
//  DS
//
//  Created by Danny Sandler on 4/14/15.
//  Copyright (c) 2015 Danny Sandler. All rights reserved.
//

import UIKit
import MapKit


class Video: UITableViewController, MKMapViewDelegate {
   
    
    @IBOutlet weak var menuButton:UIBarButtonItem!
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        
        //32.958863, -117.189594
        var latitude:CLLocationDegrees = 32.958863
        var longitude:CLLocationDegrees = -117.189594
        
        var latDelta:CLLocationDegrees = 0.015
        var longDelta:CLLocationDegrees = 0.015
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        var hospitalLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(hospitalLocation, theSpan)
        
        self.mapView.setRegion(theRegion, animated: true)
        
        var hospitalAnnotation = MKPointAnnotation()
        
        hospitalAnnotation.coordinate = hospitalLocation
        self.mapView.addAnnotation(hospitalAnnotation)

 
        }
    
    
    
    // @IBOutlet weak var webView: UIWebView!

   // override func viewDidLoad() {
   //     super.viewDidLoad()

    

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


