//
//  CreatedByCodeViewController.m
//  RSDropdownControlsDemo
//
//  Created by WhatsXie on 2017/7/11.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "CreatedByCodeViewController.h"
#import "RSDropdownControls.h"
@interface CreatedByCodeViewController ()<RSDropdownControlsDelegate>
@property (nonatomic, weak) RSDropdownControls *down;
@end

@implementation CreatedByCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createdByCode];
}
- (void)createdByCode {
    RSDropdownControls *down = [RSDropdownControls new];
    down.delegate = self;
    down.backgroundColor = [UIColor whiteColor];
    down.placeholder = @"点我试试";
    down.listArray = @[@"选择项1",@"选择项2", @"选择项3",@"选择项4",@"选择项5", @"选择项6",@"选择项7",@"选择项8", @"选择项9"];
    down.frame = CGRectMake(0, 0, 188, 40);
    down.center = self.view.center;
    [self.view addSubview:down];
    self.down = down;
}
- (void)downSelectedView:(RSDropdownControls *)selectedView didSelectedAtIndex:(NSIndexPath *)indexPath {
    NSLog(@"Clicked on :%ld", indexPath.row);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.down close];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
