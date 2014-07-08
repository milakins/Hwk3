//
//  MenuViewController.m
//  Hwk3
//
//  Created by jmilam on 7/6/14.
//  Copyright (c) 2014 Jen Milam. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()
@property (strong, nonatomic) IBOutlet UIView *MainView;
@property (weak, nonatomic) IBOutlet UIView *headlinesView;
@property (weak, nonatomic) IBOutlet UIScrollView *menuScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *headlinesImageView;
@property (weak, nonatomic) IBOutlet UIImageView *cardsImageView;

- (IBAction)onSwipeUpHeadlines:(UISwipeGestureRecognizer *)sender;
- (IBAction)onSwipeDownHeadlines:(UISwipeGestureRecognizer *)sender;
- (IBAction)onSwipeLeftCards:(UISwipeGestureRecognizer *)sender;
- (IBAction)onSwipeRightCards:(UISwipeGestureRecognizer *)sender;
@end

@implementation MenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// respond to up swipe
- (IBAction)onSwipeUpHeadlines:(UISwipeGestureRecognizer *)recognizer {
    NSLog(@"Swiping Up");
    
    // Animate the image view in swipe direction
     [UIView animateWithDuration:0.5 animations:^{
     self.headlinesView.center = CGPointMake(self.headlinesView.center.x, self.MainView.center.y);
     }];
}

// respond to down swipe
- (IBAction)onSwipeDownHeadlines:(UISwipeGestureRecognizer *)recognizer {
    NSLog(@"Swiping Down");
    
    // Animate the image view in swipe direction
     [UIView animateWithDuration:0.5 animations:^{
     self.headlinesView.center = CGPointMake(self.headlinesView.center.x, self.MainView.center.y + 525);
     }];
}


// respond to right swipe
- (IBAction)onSwipeRightCards:(UISwipeGestureRecognizer *)recognizer {
    //NSLog(@"Swiping Right");
    
    // Animate the image view in swipe direction
    [UIView animateWithDuration:0.5 animations:^{
        self.cardsImageView.center = CGPointMake(self.cardsImageView.center.x + 250, self.cardsImageView.center.y);
    }];
}

// respond to left swipe
- (IBAction)onSwipeLeftCards:(UISwipeGestureRecognizer *)recognizer {
    //NSLog(@"Swiping Left");
    
    // Animate the image view in swipe direction
    [UIView animateWithDuration:0.5 animations:^{
        self.cardsImageView.center = CGPointMake(self.cardsImageView.center.x - 250, self.cardsImageView.center.y);
    }];

}

@end
