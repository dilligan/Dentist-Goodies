//
//  ViewController.h
//  DentistGoodies
//
//  Created by Dylan Milligan on 1/27/14.
//  Copyright (c) 2014 Dylan Milligan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSMutableArray *selections;
}

@property (weak, nonatomic) IBOutlet UILabel *laresulta;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *testlabel;
@property (weak, nonatomic) IBOutlet UILabel *testLabel2;

- (IBAction)cherry:(id)sender;
- (IBAction)minty:(id)sender;
- (IBAction)bubblegum:(id)sender;

- (IBAction)pink:(id)sender;
- (IBAction)blue:(id)sender;

+ (void)setArrayIndex:(NSInteger)index toString:(NSString*)name;

@end
