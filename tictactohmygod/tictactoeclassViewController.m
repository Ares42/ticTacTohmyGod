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

@property (weak, nonatomic) IBOutlet UIImageView *ximage1;
@property (weak, nonatomic) IBOutlet UIImageView *ximage2;
@property (weak, nonatomic) IBOutlet UIImageView *ximage3;
@property (weak, nonatomic) IBOutlet UIImageView *ximage4;
@property (weak, nonatomic) IBOutlet UIImageView *ximage5;
@property (weak, nonatomic) IBOutlet UIImageView *ximage6;
@property (weak, nonatomic) IBOutlet UIImageView *ximage7;
@property (weak, nonatomic) IBOutlet UIImageView *ximage8;
@property (weak, nonatomic) IBOutlet UIImageView *ximage9;

- (IBAction)topLeft:(UIButton*)sender;
- (IBAction)topCenter:(UIButton *)sender;
- (IBAction)topRight:(id)sender;
- (IBAction)centerLeft:(UIButton *)sender;
- (IBAction)center:(UIButton *)sender;
- (IBAction)centerRight:(UIButton *)sender;



@property (nonatomic) BOOL *playerTurn;

@end

@implementation tictactoeclassViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _playerTurn = TRUE;
    _statusLabel.text = @"Os go first";
    
    UITapGestureRecognizer *topLeftTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTopLeftTapGesture:)];
    [self.image0 addGestureRecognizer:topLeftTapGestureRecognizer];
    
    UITapGestureRecognizer *topCenterTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTopCenterTapGesture:)];
    [self.image1 addGestureRecognizer:topCenterTapGestureRecognizer];
}

-(BOOL)tapDetected {
    if (_playerTurn == TRUE) {
        _playerTurn = FALSE;
        _statusLabel.text = @"Xs turn";
    } else if (_playerTurn == FALSE) {
        _playerTurn = TRUE;
        _statusLabel.text = @"Os turn";
    }
    return _playerTurn;
}

-(void)handleTopLeftTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer {
    _image0.hidden = TRUE;
}

-(void)handleTopCenterTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer {
    
}

- (IBAction)displayGestureForTapRecognizer:(UITapGestureRecognizer *)recognizer {
// Will implement method later...
}


- (IBAction)topLeft:(UIButton*)sender {
    if ([self tapDetected] == TRUE) {
        _image0.hidden = TRUE;
        _ximage1.hidden = FALSE;
    } else {
        _image0.hidden = FALSE;
        _ximage1.hidden = TRUE;
    }
}

- (IBAction)topCenter:(UIButton *)sender {
    if ([self tapDetected] == TRUE) {
        _image1.hidden = TRUE;
        _ximage2.hidden = FALSE;
    } else {
        _image1.hidden = FALSE;
        _ximage2.hidden = TRUE;
    }
}

- (IBAction)topRight:(id)sender {
    if ([self tapDetected] == TRUE) {
        _image2.hidden = TRUE;
        _ximage3.hidden = FALSE;
    } else {
        _image2.hidden = FALSE;
        _ximage3.hidden = TRUE;
    }
}

- (IBAction)centerLeft:(UIButton *)sender {
}

- (IBAction)center:(UIButton *)sender {
}

- (IBAction)centerRight:(UIButton *)sender {
}



@end
