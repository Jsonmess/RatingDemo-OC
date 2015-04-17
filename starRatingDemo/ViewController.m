//
//  ViewController.m
//  starRatingDemo
//
//  Created by jsonmess on 15/4/17.
//  Copyright (c) 2015年 jsonmess. All rights reserved.
//

#import "ViewController.h"
#import "JSStarRating.h"
@interface ViewController ()
{
    JSStarRating *js;
}
@property (weak, nonatomic) IBOutlet UIImageView *RatingView;
@property (weak, nonatomic) IBOutlet UITextField *handStar;
- (IBAction)beganSart:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    js = [[JSStarRating alloc] initWithFrame:CGRectMake((self.view.bounds.size.width-200)*0.5f, 100, 200, 50)];
    [self.RatingView addSubview:js];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)beganSart:(id)sender
{
    CGFloat score = [self.handStar.text floatValue];
    [self.handStar resignFirstResponder];
    [js showStarbyRatingValueWithRatingValue:score];
}
@end
