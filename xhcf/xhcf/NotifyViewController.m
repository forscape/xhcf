//
//  NotifyViewController.m
//  xhcf
//
//  Created by 刘学 on 17/1/3.
//  Copyright © 2017年 Ethan. All rights reserved.
//
#define kScreen_width self.view.bounds.size.width

#import "NotifyViewController.h"
#import "ProductNewsViewController.h"
#import "XHCFTitleButton.h"
#import "UIView+Frame.h"

@interface NotifyViewController ()
@property (nonatomic, weak) UIView *titlesView;
@property (nonatomic, weak) XHCFTitleButton *previousClickedTitleButton;
@end

@implementation NotifyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupNavigationController];

    // 初始化控制器
    [self setupAllChildVcs];
    
    // scrollView
    [self setupScrollView];
    
    // 标题栏
    [self setupTitlesView];
}

/**
 *  设置导航条
 */
- (void)setupNavigationController {
    
    self.title = @"消息";
}

- (void)setupAllChildVcs {
    
    [self addChildViewController:[[ProductNewsViewController alloc] init]];
    [self addChildViewController:[[ProductNewsViewController alloc] init]];
    [self addChildViewController:[[ProductNewsViewController alloc] init]];
    [self addChildViewController:[[ProductNewsViewController alloc] init]];
}

/**
 *  scrollView
 */
- (void)setupScrollView {
    
    // 不允许自动修改UIScrollView的内边距
    self.automaticallyAdjustsScrollViewInsets = NO;
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.backgroundColor = [UIColor blueColor];
    scrollView.frame = self.view.bounds;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.pagingEnabled = YES;
    [self.view addSubview:scrollView];

    NSUInteger count = self.childViewControllers.count;
    CGFloat scrollViewW = scrollView.width;
    CGFloat scrollViewH = scrollView.height;
    
    for (NSUInteger i = 0; i < count; i++) {
        // 取出i位置子控制器的view
        UIView *childVcView = self.childViewControllers[i].view;
        childVcView.frame = CGRectMake(i * scrollViewW, 0, scrollViewW, scrollViewH);
        [scrollView addSubview:childVcView];
    }
    
    scrollView.contentSize = CGSizeMake(count * scrollViewW, 0);
}

/**
 *  标题栏按钮
 */
- (void)setupTitleButtons
{
    // 文字
    NSArray *titles = @[@"产品动态", @"站内信", @"课程动态", @"系统消息"];
    NSUInteger count = titles.count;
    
    // 标题按钮的尺寸
    CGFloat titleButtonW = self.titlesView.width / count;
    CGFloat titleButtonH = self.titlesView.height;
    
    // 创建5个标题按钮
    for (NSUInteger i = 0; i < count; i++) {
        XHCFTitleButton *titleButton = [[XHCFTitleButton alloc] init];
        [titleButton addTarget:self action:@selector(titleButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.titlesView addSubview:titleButton];
        // frame
        titleButton.frame = CGRectMake(i * titleButtonW, 0, titleButtonW, titleButtonH);
        // 文字
        [titleButton setTitle:titles[i] forState:UIControlStateNormal];
    }
}

- (void)titleButtonClick:(XHCFTitleButton *)titleButton
{
    // 切换按钮状态
    self.previousClickedTitleButton.selected = NO;
    titleButton.selected = YES;
    self.previousClickedTitleButton = titleButton;
}

/**
 *  标题栏
 */
- (void)setupTitlesView
{
    UIView *titlesView = [[UIView alloc] init];
    titlesView.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.5];
    titlesView.frame = CGRectMake(0, 64, self.view.width, 60);
    [self.view addSubview:titlesView];
    self.titlesView = titlesView;
    
    // 标题栏按钮
    [self setupTitleButtons];
}


//- (void)setTitleView {
//    UIView *titleView = [[UIView alloc] init];
//    titleView.frame = CGRectMake(0, 64, kScreen_width, 60);
////    titleView.backgroundColor = [UIColor grayColor];
//    [self.view addSubview:titleView];
//    self.titlesView = titleView;
//    
//    [self setTitleButtons];
//}
//
//- (void)setTitleButtons {
//    NSArray *titles = @[@"产品动态", @"站内信", @"课程动态", @"系统消息"];
//    NSUInteger count = titles.count;
//    
//    CGFloat titleButtonW = kScreen_width / count;
//    CGFloat titleButtonH = 60;
//    
//    for (NSUInteger i = 0; i < count; i++) {
//        XHCFTitleButton *titleButton = [[XHCFTitleButton alloc] init];
//        [titleButton addTarget:self action:@selector(titleButtonClick:) forControlEvents:UIControlEventTouchUpInside];
//        [self.titlesView addSubview:titleButton];
//        titleButton.frame = CGRectMake(i * titleButtonW, 0, titleButtonW, titleButtonH);
//        [titleButton setTitle:titles[i] forState:UIControlStateNormal];
//    }
//}
//
//- (void)titleButtonClick:(UIButton *)titleButton {
//    
//    self.previousClickedTitleButton.selected = NO;
//    titleButton.selected = YES;
//    self.previousClickedTitleButton = titleButton;
//}
//
//- (void)setScrollView {
//    
//    // 不允许自动修改UIScrollView的内边距
//    self.automaticallyAdjustsScrollViewInsets = NO;
//    
//    UIScrollView *scrollView = [[UIScrollView alloc] init];
//    scrollView.backgroundColor = [UIColor blueColor];
//    scrollView.frame = self.view.bounds;
//    scrollView.showsHorizontalScrollIndicator = NO;
//    scrollView.showsVerticalScrollIndicator = NO;
//    scrollView.pagingEnabled = YES;
//    [self.view addSubview:scrollView];
//    
//    NSUInteger count = self.childViewControllers.count;
//    CGFloat scrollViewW = scrollView.width;
//    CGFloat scrollViewH = scrollView.height;
//    
//    for (NSUInteger i = 0; i < count; i++) {
//        UIView *childVCView = self.childViewControllers[i].view;
//        childVCView.frame = CGRectMake(i * scrollViewW, 0, scrollViewW, scrollViewH);
//        [scrollView addSubview:childVCView];
//    }
//    scrollView.contentSize = CGSizeMake(count * scrollViewW, 0);
//}
//
//- (void)setAllChildsVCs {
//    [self addChildViewController:[[ProductNewsViewController alloc] init]];
//    [self addChildViewController:[[ProductNewsViewController alloc] init]];
//    [self addChildViewController:[[ProductNewsViewController alloc] init]];
//    [self addChildViewController:[[ProductNewsViewController alloc] init]];
//
//}

@end
