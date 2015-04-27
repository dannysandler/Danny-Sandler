//
//  viewController.h
//  DS
//
//  Created by Danny Sandler on 4/20/15.
//  Copyright (c) 2015 Danny Sandler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface viewController : UIViewController <UIPageViewControllerDataSource>

- (IBAction)startWalkthrough:(id)sender;
@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *pageTitles;
@property (strong, nonatomic) NSArray *pageImages;
@end
