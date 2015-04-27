//
//  2welcomeTableViewController.swift
//  DS
//
//  Created by Danny Sandler on 4/19/15.
//  Copyright (c) 2015 Danny Sandler. All rights reserved.
//

import UIKit
import MapKit


class _welcomeTableViewController: UITableViewController, MKMapViewDelegate {
    @IBOutlet weak var menuButton:UIBarButtonItem!, mapView:MKMapView!
    @IBOutlet weak var mapView3: MKMapView!
    @IBOutlet weak var mapView2: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
           /*
            let birthLocation = CLLocationCoordinate2D(latitude: 37.77831, longitude: –,122.38758)
            //set a span to be used by the MKCoordinateRegion structure
            var span = MKCoordinateSpanMake(0.01, 0.01)
            //create MKCoordinateRegion structure
            var coordinateRegion = MKCoordinateRegion(center: birthLocation, span: span)
            //set the region of the MKMapView object
            map.setRegion(coordinateRegion, animated: true)
            
            //create an MKPointAnnotation object
            let sfGiantsStadiumAnnotation = MKPointAnnotation()
            //set properties of the MKPointAnnotation object
            birthAnnotation.setCoordinate(birthLocation)
            birthAnnotation.title = “Hospital”
            birthAnnotation.subtitle = “Home of Danny”
            
            //add the annotation to the map
            map.addAnnotation(birthAnnotation)
*/
          //  Latitude:	42.3306311
          //  Longitude:	-71.2464418 42.331492, -71.245646 42.331405, -71.245748
            
            tableView.estimatedRowHeight = 169.0
            tableView.rowHeight = UITableViewAutomaticDimension
            var latitude:CLLocationDegrees = 42.331405
            var longitude:CLLocationDegrees = -71.245748
            
            var latDelta:CLLocationDegrees = 0.015
            var longDelta:CLLocationDegrees = 0.015
            
            var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
            
            var hospitalLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
            
            var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(hospitalLocation, theSpan)
            
           self.mapView.setRegion(theRegion, animated: true)
            
            var hospitalAnnotation = MKPointAnnotation()
            
           hospitalAnnotation.coordinate = hospitalLocation
          //  hospitalAnnotation.title = "Newton-Wellesley Hospital"
            //hospitalAnnotation.subtitle = "Newton, MA"
            self.mapView.addAnnotation(hospitalAnnotation)
            
            //32.959662, -117.265250
            
            var latitude2:CLLocationDegrees = 32.959662
            var longitude2:CLLocationDegrees = -117.265250
            
            var latDelta2:CLLocationDegrees = 0.05
            var longDelta2:CLLocationDegrees = 0.05
            
            var theSpan2:MKCoordinateSpan = MKCoordinateSpanMake(latDelta2, longDelta2)
            
            var hospitalLocation2:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude2, longitude2)
            
            var theRegion2:MKCoordinateRegion = MKCoordinateRegionMake(hospitalLocation2, theSpan2)
            
            self.mapView2.setRegion(theRegion2, animated: true)
            
            var hospitalAnnotation2 = MKPointAnnotation()
            
            hospitalAnnotation2.coordinate = hospitalLocation2
            //  hospitalAnnotation.title = ""
            //hospitalAnnotation.subtitle = ""
            self.mapView2.addAnnotation(hospitalAnnotation2)
            
            
            var latitude3:CLLocationDegrees = 32.958863
            var longitude3:CLLocationDegrees = -117.189594
            
            var latDelta3:CLLocationDegrees = 0.015
            var longDelta3:CLLocationDegrees = 0.015
            
            var theSpan3:MKCoordinateSpan = MKCoordinateSpanMake(latDelta3, longDelta3)
            
            var hospitalLocation3:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude3, longitude3)
            
            var theRegion3:MKCoordinateRegion = MKCoordinateRegionMake(hospitalLocation3, theSpan3)
            
            self.mapView3.setRegion(theRegion3, animated: true)
            
            var hospitalAnnotation3 = MKPointAnnotation()
            
            hospitalAnnotation3.coordinate = hospitalLocation3
            self.mapView3.addAnnotation(hospitalAnnotation3)

            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
/*
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 0
    }
*/
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
