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
- (IBAction)resetButton:(UIButton *)sender;
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
@property (weak, nonatomic) IBOutlet UIButton *topLeftButton;
@property (weak, nonatomic) IBOutlet UIButton *topCenterButton;
@property (weak, nonatomic) IBOutlet UIButton *topRightButton;
@property (weak, nonatomic) IBOutlet UIButton *leftCenterButton;
@property (weak, nonatomic) IBOutlet UIButton *midleCenterButton;
@property (weak, nonatomic) IBOutlet UIButton *rightCenterButton;
@property (weak, nonatomic) IBOutlet UIButton *leftBottomButton;
@property (weak, nonatomic) IBOutlet UIButton *middleBottomButton;
@property (weak, nonatomic) IBOutlet UIButton *rightBottomButton;

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

-(void)victoryCheck {
/*
        There are 8 winning positions on the board:
 verticle lines          horizontal lines       diagonals
 1,0,0  0,1,0  0,0,1 | 1,1,1  0,0,0  0,0,0 | 1,0,0  0,0,1
 1,0,0  0,1,0  0,0,1 | 0,0,0  1,1,1  0,0,0 | 0,1,0  0,1,0
 1,0,0  0,1,0  0,0,1 | 0,0,0  0,0,0  1,1,1 | 0,0,1  1,0,0

    Run all 8 checks every time?
    I guess so... although won't there be 16 checks? one for each

    Logic that needs to be implemented:
    1. Can I win?
    2. Can my opponent win next turn?
    
 */
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

#pragma mark - Button Behaviors
- (IBAction)resetButton:(UIButton *)sender {
    _image0.hidden = TRUE;
    _image1.hidden = TRUE;
    _image2.hidden = TRUE;
    _image3.hidden = TRUE;
    _image4.hidden = TRUE;
    _image5.hidden = TRUE;
    _image6.hidden = TRUE;
    _image7.hidden = TRUE;
    _image8.hidden = TRUE;
    _ximage1.hidden = TRUE;
    _ximage2.hidden = TRUE;
    _ximage3.hidden = TRUE;
    _ximage4.hidden = TRUE;
    _ximage5.hidden = TRUE;
    _ximage6.hidden = TRUE;
    _ximage7.hidden = TRUE;
    _ximage8.hidden = TRUE;
    _ximage9.hidden = TRUE;
    _topLeftButton.hidden = FALSE;
    _topCenterButton.hidden = FALSE;
    _topRightButton.hidden = FALSE;
    _leftCenterButton.hidden = FALSE;
    _midleCenterButton.hidden = FALSE;
    _rightCenterButton.hidden = FALSE;
    _leftBottomButton.hidden = FALSE;
    _middleBottomButton.hidden = FALSE;
    _rightBottomButton.hidden = FALSE;
    _playerTurn = TRUE;
    _statusLabel.text = @"Os go first";
}

- (IBAction)topLeft:(UIButton*)sender {
    if ([self tapDetected] == TRUE) {
        _image0.hidden = TRUE;
        _ximage1.hidden = FALSE;
        _topLeftButton.hidden = TRUE;
    } else {
        _image0.hidden = FALSE;
        _ximage1.hidden = TRUE;
        _topLeftButton.hidden = TRUE;
    }
    _topLeftButton.hidden = TRUE;
}

- (IBAction)topCenter:(UIButton *)sender {
    if ([self tapDetected] == TRUE) {
        _image1.hidden = TRUE;
        _ximage2.hidden = FALSE;
        _topCenterButton.hidden = TRUE;
    } else {
        _image1.hidden = FALSE;
        _ximage2.hidden = TRUE;
        _topCenterButton.hidden = TRUE;
    }
}

- (IBAction)topRight:(id)sender {
    if ([self tapDetected] == TRUE) {
        _image2.hidden = TRUE;
        _ximage3.hidden = FALSE;
        _topRightButton.hidden = TRUE;
    } else {
        _image2.hidden = FALSE;
        _ximage3.hidden = TRUE;
        _topRightButton.hidden = TRUE;
    }
}

- (IBAction)centerLeft:(UIButton *)sender {
    if ([self tapDetected] == TRUE) {
        _image3.hidden = TRUE;
        _ximage4.hidden = FALSE;
        _leftCenterButton.hidden = TRUE;
    } else {
        _image3.hidden = FALSE;
        _ximage4.hidden = TRUE;
        _leftCenterButton.hidden = TRUE;

    }
}

- (IBAction)center:(UIButton *)sender {
    if ([self tapDetected] == TRUE) {
        _image4.hidden = TRUE;
        _ximage5.hidden = FALSE;
        _midleCenterButton.hidden = TRUE;
    } else {
        _image4.hidden = FALSE;
        _ximage5.hidden = TRUE;
        _midleCenterButton.hidden = TRUE;
    }
}

- (IBAction)centerRight:(UIButton *)sender {
    if ([self tapDetected] == TRUE) {
        _image5.hidden = TRUE;
        _ximage6.hidden = FALSE;
        _rightCenterButton.hidden = TRUE;
    } else {
        _image5.hidden = FALSE;
        _ximage6.hidden = TRUE;
        _rightCenterButton.hidden = TRUE;
    }
}

- (IBAction)bottomLeft:(UIButton *)sender {
    if ([self tapDetected] == TRUE) {
        _image6.hidden = TRUE;
        _ximage7.hidden = FALSE;
        _leftBottomButton.hidden = TRUE;
    } else {
        _image6.hidden = FALSE;
        _ximage7.hidden = TRUE;
        _leftBottomButton.hidden = TRUE;
    }
}

- (IBAction)bottomCenter:(UIButton *)sender {
    if ([self tapDetected] == TRUE) {
        _image7.hidden = TRUE;
        _ximage8.hidden = FALSE;
        _middleBottomButton.hidden = TRUE;
    } else {
        _image7.hidden = FALSE;
        _ximage8.hidden = TRUE;
        _middleBottomButton.hidden = TRUE;
    }
}

- (IBAction)bottomRight:(UIButton *)sender {
    if ([self tapDetected] == TRUE) {
        _image8.hidden = TRUE;
        _ximage9.hidden = FALSE;
        _rightBottomButton.hidden = TRUE;
    } else {
        _image8.hidden = FALSE;
        _ximage9.hidden = TRUE;
        _rightBottomButton.hidden = TRUE;
    }
}



@end
