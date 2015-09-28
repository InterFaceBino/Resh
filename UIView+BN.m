//
//  UIView+BN.m
//  Resh
//
//  Created by wo on 15/9/26.
//  Copyright (c) 2015年 wo. All rights reserved.
//

#import "UIView+BN.h"

#import "BNHeadView.h"
#import "BNFootView.h"

@implementation UIView (BN)

+(UIView *) bnHeadResh:(UITableView *)tableView andArray :(NSMutableArray *)muArray{

    BNHeadView *headView = [BNHeadView headView];
    [tableView addSubview:headView];
    
    headView.headResh = ^(void){
        [muArray addObject:@"新加的"];
        [tableView reloadData];

        [tableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0] atScrollPosition:UITableViewScrollPositionTop animated:NO];
    };
    return headView;
}

+(UIView *)bnFootResh:(UITableView *)tableView andArray:(NSMutableArray *)muArray{
    BNFootView *footView = [BNFootView footView];
    [tableView addSubview:footView];
    
    footView.footResh = ^(void){
        [muArray addObject:@"新加的"];
        [tableView reloadData];
        [tableView  scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:muArray.count-1 inSection:0] atScrollPosition:UITableViewScrollPositionTop animated:NO];
    };
    return footView;
}

@end
