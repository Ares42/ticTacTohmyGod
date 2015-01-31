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

@property (nonatomic) BOOL *playerTurn;
@property (nonatomic) NSMutableArray *statusarray;

- (IBAction)topLeft:(UIButton*)sender;
- (IBAction)topCenter:(UIButton *)sender;
- (IBAction)topRight:(id)sender;
- (IBAction)centerLeft:(UIButton *)sender;
- (IBAction)center:(UIButton *)sender;
- (IBAction)centerRight:(UIButton *)sender;
- (IBAction)bottomLeft:(UIButton *)sender;
- (IBAction)bottomCenter:(UIButton *)sender;
- (IBAction)bottomRight:(UIButton *)sender;

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

/*
 * Baics of tic tac toe
 */

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

-(void)victoryCheck {

    
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
    if ([self tapDetected] == TRUE) {
        _image3.hidden = TRUE;
        _ximage4.hidden = FALSE;
    } else {
        _image3.hidden = FALSE;
        _ximage4.hidden = TRUE;
    }
}

- (IBAction)center:(UIButton *)sender {
    if ([self tapDetected] == TRUE) {
        _image4.hidden = TRUE;
        _ximage5.hidden = FALSE;
    } else {
        _image4.hidden = FALSE;
        _ximage5.hidden = TRUE;
    }
}

- (IBAction)centerRight:(UIButton *)sender {
    if ([self tapDetected] == TRUE) {
        _image5.hidden = TRUE;
        _ximage6.hidden = FALSE;
    } else {
        _image5.hidden = FALSE;
        _ximage6.hidden = TRUE;
    }
}

- (IBAction)bottomLeft:(UIButton *)sender {
    if ([self tapDetected] == TRUE) {
        _image6.hidden = TRUE;
        _ximage7.hidden = FALSE;
    } else {
        _image6.hidden = FALSE;
        _ximage7.hidden = TRUE;
    }
}

- (IBAction)bottomCenter:(UIButton *)sender {
    if ([self tapDetected] == TRUE) {
        _image7.hidden = TRUE;
        _ximage8.hidden = FALSE;
    } else {
        _image7.hidden = FALSE;
        _ximage8.hidden = TRUE;
    }
}

- (IBAction)bottomRight:(UIButton *)sender {
    if ([self tapDetected] == TRUE) {
        _image8.hidden = TRUE;
        _ximage9.hidden = FALSE;
    } else {
        _image8.hidden = FALSE;
        _ximage9.hidden = TRUE;
    }
}


@end
