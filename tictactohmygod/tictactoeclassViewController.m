//
//  tictactoeclassViewController.m
//  tictactohmygod
//
//  Created by Luke Solomon on 1/28/15.
//  Copyright (c) 2015 Luke Solomon. All rights reserved.
//

#import "tictactoeclassViewController.h"

@interface tictactoeclassViewController ()

@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UIImageView *image0;
@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property (weak, nonatomic) IBOutlet UIImageView *image3;
@property (weak, nonatomic) IBOutlet UIImageView *image4;
@property (weak, nonatomic) IBOutlet UIImageView *image5;
@property (weak, nonatomic) IBOutlet UIImageView *image6;
@property (weak, nonatomic) IBOutlet UIImageView *image7;
@property (weak, nonatomic) IBOutlet UIImageView *image8;

@end

@implementation tictactoeclassViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITapGestureRecognizer *topLeftTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTopLeftTapGesture:)];
    [self.image0 addGestureRecognizer:topLeftTapGestureRecognizer];
    
    UITapGestureRecognizer *topCenterTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTopCenterTapGesture:)];
    [self.image1 addGestureRecognizer:topCenterTapGestureRecognizer];
}

-(void)handleTopLeftTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer {
    _image0.hidden = true;
}

-(void)handleTopCenterTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer {
    
}

- (IBAction)displayGestureForTapRecognizer:(UITapGestureRecognizer *)recognizer {
// Will implement method later...
}


@end
