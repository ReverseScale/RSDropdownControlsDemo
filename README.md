# RSDropdownControlsDemo

![](https://img.shields.io/badge/platform-iOS-red.svg) ![](https://img.shields.io/badge/language-Objective--C-orange.svg) ![](https://img.shields.io/badge/download-1.5MB-brightgreen.svg
) ![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

下拉选项框作为网页端常用的控件，iOS端也常被使用，现在使用OC实现了一下这个控件的封装，通过代理方法回调。

| 名称 |1.列表页 |2.纯代码创建 |3.XIB创建|
| ------------- | ------------- | ------------- | ------------- |
| 截图 | ![](http://og1yl0w9z.bkt.clouddn.com/17-7-11/65983822.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-7-11/60232326.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-7-11/68725393.jpg) |
| 描述 | 通过 storyboard 搭建基本框架 | 使用纯代码创建 | 使用XIB创建 |

## Advantage 框架的优势
* 1.文件少，代码简洁
* 2.不依赖任何其他第三方库
* 3.使用Delegate方式回调，定制性优良
* 4.同时支持XIB/纯代码方式创建
* 5.具备较高自定义性

## Requirements 要求
* iOS 7+
* Xcode 8+


## Usage 使用方法
### 第一步 引入头文件
```
#import "RSDropdownControls.h"
```
### 第二步 使用纯代码方式创建
声明属性
```
// 控制控件收起需要声明属性
@property (nonatomic, weak) RSDropdownControls *down;
```
创建方法
```
- (void)createdByCode {
    RSDropdownControls *down = [RSDropdownControls new];
    down.delegate = self;
    down.backgroundColor = [UIColor whiteColor];
    down.placeholder = @"点我试试";
    down.listArray = @[@"选择项1",@"选择项2", @"选择项3",@"选择项4",@"选择项5", @"选择项6",@"选择项7",@"选择项8", @"选择项9"];
    down.frame = CGRectMake(30, 100, 188, 40);
    [self.view addSubview:down];
    self.down = down;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.down close];
}
```
### 第三步 签代理及实现
```
<RSDropdownControlsDelegate>
// 实现方法
- (void)downSelectedView:(RSDropdownControls *)selectedView didSelectedAtIndex:(NSIndexPath *)indexPath {
    NSLog(@"Clicked on :%ld", indexPath.row);
}
```

使用简单、效率高效、进程安全~~~如果你有更好的建议,希望不吝赐教!


## License 许可证
RSDropdownControlsDemo 使用 MIT 许可证，详情见 LICENSE 文件。


## Contact 联系方式:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io
