//
//  ViewController.m
//  GlobalTableView
//
//  Created by Saahil Gilani on 10/07/17.
//  Copyright © 2017 Saahil Gilani. All rights reserved.
//

#import "ViewController.h"
#import "GlobalTableView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myViwe;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    GlobalTableView *table = [[GlobalTableView alloc] initWithFrame:_myViwe.frame];
    [table setFrame:CGRectMake(_myViwe.frame.origin.x, _myViwe.frame.origin.y, _myViwe.frame.size.width, _myViwe.frame.size.height)];
    [_myViwe addSubview:table];
    table.some = self;
    [table setFeedData:@{}];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)yay{
    NSLog(@"here 1 2 1");
}


@end
