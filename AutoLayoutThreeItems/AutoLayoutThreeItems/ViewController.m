//
//  ViewController.m
//  AutoLayoutThreeItems
//
//  Created by MAC on 10/28/13.
//  Copyright (c) 2013 ios18. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *firstImage;
@property (weak, nonatomic) IBOutlet UIImageView *centerImage;
@property (weak, nonatomic) IBOutlet UIImageView *lastImage;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) viewDidLayoutSubviews
{
    UIDeviceOrientation deviceOrientation = [UIDevice currentDevice].orientation;
    NSLog(@"orientation:  state: % i", deviceOrientation);
    
   
    if(UIDeviceOrientationIsPortrait(deviceOrientation)){
        
        self.firstImage.center = CGPointMake(self.centerImage.center.x,
                                             self.centerImage.center.y /2);
        
        self.lastImage.center = CGPointMake(self.centerImage.center.x,
                                            3 * self.centerImage.center.y /2);
    }else{
        self.firstImage.center = CGPointMake(self.centerImage.center.x / 2,
                                             self.centerImage.center.y);
        
        self.lastImage.center = CGPointMake(self.centerImage.center.x * 3 /2,
                                             self.centerImage.center.y);
    }

    
}




@end
