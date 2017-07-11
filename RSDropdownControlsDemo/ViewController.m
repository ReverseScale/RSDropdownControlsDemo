//
//  ViewController.m
//  RSDropdownControlsDemo
//
//  Created by WhatsXie on 2017/7/11.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "ViewController.h"

#import "RSDropdownControls.h"

@interface ViewController ()<RSDropdownControlsDelegate>
@property (nonatomic, weak) RSDropdownControls *down;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    RSDropdownControls *down = [RSDropdownControls new];
    down.delegate = self;
    down.backgroundColor = [UIColor whiteColor];
    down.placeholder = @"点我试试";
    down.listArray = @[@"选择项1",@"选择项2", @"选择项3",@"选择项4",@"选择项5", @"选择项6",@"选择项7",@"选择项8", @"选择项9"];
    down.frame = CGRectMake(30, 100, 188, 40);
    [self.view addSubview:down];
    self.down = down;
}
- (void)downSelectedView:(RSDropdownControls *)selectedView didSelectedAtIndex:(NSIndexPath *)indexPath {
    NSLog(@"---:%@", indexPath);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.down close];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
