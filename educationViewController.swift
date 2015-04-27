//
//  educationViewController.swift
//  DS
//
//  Created by Danny Sandler on 4/17/15.
//  Copyright (c) 2015 Danny Sandler. All rights reserved.
//
/*
import UIKit
import MapKit.framework

class educationViewController: UIViewController {

    @IBOutlet weak var mapView: MapKitView
    override func viewDidLoad() {
        super.viewDidLoad()
        var latDelta:CLLocationDegrees = 0.01
        
        var longDelta:CLLocationDegrees = 0.01
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        var pointLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(your, latitude, your, longitude)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(pointLocation, theSpan)
        mapView.setRegion(region, animated: true)
        
        var pinLocation : CLLocationCoordinate2D = CLLocationCoordinate2DMake(your, latitude, your, longitude)
        var objectAnnotation = MKPointAnnotation()
        objectAnnotation.coordinate = pinLocation
        objectAnnotation.title = your; title
        self.mapView.addAnnotation(objectAnnotation)
        // Do any additional setup after loading the view.
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
*/
