//
//  BNTableView.m
//  Resh
//
//  Created by wo on 15/9/26.
//  Copyright (c) 2015年 wo. All rights reserved.
//

#import "BNTableView.h"

@interface BNTableView () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) NSMutableArray *dataArray;

@end

@implementation BNTableView


+(id)contentView{
    return  [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
//    UIView *tableView = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
//    self bnFootResh:self andArray:_da
}

- (void)awakeFromNib
{
     _dataArray = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7", nil];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [[UITableViewCell alloc]init];
    
    cell.textLabel.text =_dataArray[indexPath.row];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}


@end
