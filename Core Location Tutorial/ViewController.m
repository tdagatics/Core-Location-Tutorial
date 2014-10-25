//
//  ViewController.m
//  Core Location Tutorial
//
//  Created by Anthony Dagati on 10/24/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [self.locationManager startUpdatingLocation];
    self.locationManager.delegate = self;
    self.location = [[CLLocation alloc] init];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    self.location = locations.lastObject;
    NSLog(@"Your location was %@", self.location.description);
    self.coordinateLat.text = [NSString stringWithFormat:@"%f", self.location.coordinate.latitude];
    self.coordinateLon.text = [NSString stringWithFormat:@"%f", self.location.coordinate.longitude];
    self.altitude.text = [NSString stringWithFormat:@"%f", self.location.altitude];
    self.hAccuracy.text = [NSString stringWithFormat:@"%f", self.location.horizontalAccuracy];
    self.vAccuracy.text = [NSString stringWithFormat:@"%f", self.location.verticalAccuracy];
    self.timestamp.text = [NSString stringWithFormat:@"%@", self.location.timestamp];
    self.speed.text = [NSString stringWithFormat:@"%f", self.location.speed];
    self.course.text = [NSString stringWithFormat:@"%f", self.location.course];
    
}
@end
