//
//  CreatedByXIBViewController.m
//  RSDropdownControlsDemo
//
//  Created by WhatsXie on 2017/7/11.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "CreatedByXIBViewController.h"
#import "RSDropdownControls.h"

@interface CreatedByXIBViewController ()<RSDropdownControlsDelegate>
@property (weak, nonatomic) IBOutlet RSDropdownControls *dropdownControls;

@end

@implementation CreatedByXIBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self createdByXIB];
}
- (void)createdByXIB {
    _dropdownControls.placeholder = @"性别选择";
    _dropdownControls.listArray = @[@"男", @"女"];
    _dropdownControls.delegate = self;
}
- (void)downSelectedView:(RSDropdownControls *)selectedView didSelectedAtIndex:(NSIndexPath *)indexPath {
    NSLog(@"Clicked on :%ld", indexPath.row);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_dropdownControls close];
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
