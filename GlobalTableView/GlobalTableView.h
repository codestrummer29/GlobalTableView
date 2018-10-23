//
//  GlobalTableView.h
//  GlobalTableView
//
//  Created by Saahil Gilani on 10/07/17.
//  Copyright © 2017 Saahil Gilani. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TableProtocol
- (void)yay;
@end


@interface GlobalTableView : UITableView<UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate>{
    NSDictionary *data;
}

- (id)initWithFrame:(CGRect)frame;

- (void)setFeedData:(NSDictionary *)feed;

@property (assign,nonatomic) id some;

@end
