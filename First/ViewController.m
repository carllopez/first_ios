//
//  ViewController.m
//  First
//
//  Created by Carlos Lopez on 7/16/14.
//  Copyright (c) 2014 Neat Coders. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Create label and set frame
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(80, 190, 200, 50)];
    label.alpha = 0.0f;
    label.text = @"Getting somewhere.....";
    
    CATransition *transition = [CATransition animation];
    transition.type = kCATransitionFade;
	
    // Finally add the label
    [self.view addSubview:label];
    
    // Try to animate the label
    [UIView beginAnimations:Nil context:Nil];
    
    [UIView setAnimationDuration:8];
    
    label.alpha = 1.0f;
    
    [UIView commitAnimations];
}

-(void)fadeIn
{
    [UIView beginAnimations:Nil context:Nil];

    [UIView setAnimationDuration:2];

    //label.transform=CGAffineTransformMakeTranslation(for X coordinate,for Y coordinate);
    //label.text = @"new stuff";

    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
