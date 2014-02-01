//
//  ViewController.m
//  DentistGoodies
//
//  Created by Dylan Milligan on 1/27/14.
//  Copyright (c) 2014 Dylan Milligan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    selections = [NSMutableArray arrayWithObjects: @"none", @"none", @"none", @"none", nil];
    //get this from NSUserDefaults
    //only alloc for method variables
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cherry:(id)sender {
    [selections replaceObjectAtIndex:0 withObject:@"cherry"];
    _laresulta.text=[selections objectAtIndex:0];
    _testLabel2.text=[selections objectAtIndex:1];
}

- (IBAction)minty:(id)sender {
    [selections replaceObjectAtIndex:0 withObject:@"minty"];
    _laresulta.text=[selections objectAtIndex:0];
}

- (IBAction)bubblegum:(id)sender {
    [selections replaceObjectAtIndex:0 withObject:@"bubblegum"];
    _laresulta.text=[selections objectAtIndex:0];
}

- (IBAction)pink:(id)sender {
    [selections replaceObjectAtIndex:1 withObject:@"pink"];
    [ViewController setArrayIndex:1 toString:@"pink"];
    _secondLabel.text=[selections objectAtIndex:1];
    _testlabel.text=[selections objectAtIndex:0];
}

- (IBAction)blue:(id)sender {
    [selections replaceObjectAtIndex:1 withObject:@"blue"];
    _secondLabel.text=[selections objectAtIndex:1];
}

+ (void)setArrayIndex:(NSInteger)index toString:(NSString *)name {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *temp = [[defaults objectForKey:@"choicesArray"] mutableCopy];
    if(temp==nil){
        temp = [NSMutableArray arrayWithObjects: @"none", @"none", @"none", @"none", nil];
        //not sure if this works.
    }
    [temp replaceObjectAtIndex:index withObject:name];
    [defaults setObject:temp forKey:@"choicesArray"];
    [defaults synchronize];
}

@end
