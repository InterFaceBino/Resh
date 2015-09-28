//
//  BNFactory.m
//  Resh
//
//  Created by wo on 15/9/26.
//  Copyright (c) 2015年 wo. All rights reserved.
//

#import "BNFactory.h"

#import "BNHeadView.h"
#import "BNFootView.h"

@interface BNFactory ()

@property(nonatomic,weak) BNHeadView * headView;

@property(nonatomic,weak) BNFootView *footView;

@end

@implementation BNFactory

//+(UIView *) bnResh:(UITableView *)tableView andArray :(NSMutableArray *)muArray{
//    
//    BNHeadView *headView = [BNHeadView headView];
//    
//    [tableView addSubview:headView];
//    
////    _headView = headView;
//    
//    headView.headResh = ^(void){
//        
//        [muArray addObject:@"新加的"];
//        [tableView reloadData];
//        
//        [tableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0] atScrollPosition:UITableViewScrollPositionTop animated:NO];
//    };
//    
//    BNFootView *footView = [BNFootView footView];
//    [tableView addSubview:footView];
//    
////    _footView = footView;
//    
//    footView.footResh = ^(void){
//        [muArray addObject:@"新加的"];
//        [tableView reloadData];
//        [tableView  scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:muArray.count-1 inSection:0] atScrollPosition:UITableViewScrollPositionTop animated:NO];
//    };
//    
//    
//}

@end
