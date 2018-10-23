//
//  GlobalTableView.m
//  GlobalTableView
//
//  Created by Saahil Gilani on 10/07/17.
//  Copyright © 2017 Saahil Gilani. All rights reserved.
//

#import "GlobalTableView.h"
#import "Custom.h"

@implementation GlobalTableView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.delegate = self;
        self.dataSource = self;
        [self setUpTableView];
    }
    return self;
}

- (void)setFeedData:(NSDictionary *)feed{
    data = feed;
    [self reloadData];
}

- (void)setUpTableView{
    [self registerNib:[UINib nibWithNibName:@"Custom" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"Custom"];
    NSLog(@"here");
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"here 1");
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *CellIden = @"Custom";
    NSLog(@"here 2");
    Custom *cell = (Custom *)[tableView dequeueReusableCellWithIdentifier:CellIden];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"here 3");
    return 50;
}

#pragma mark - ScrollView Delegates

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    CGFloat currentOffset = scrollView.contentOffset.y;
    CGFloat maximumOffset = scrollView.contentSize.height - scrollView.frame.size.height;
    // Change 10.0 to adjust the distance from bottom
    NSLog(@"here 1 1");
    if (maximumOffset - currentOffset <= 10.0){
        NSLog(@"here 1 2");
        [self.some yay];
    }
}

@end
