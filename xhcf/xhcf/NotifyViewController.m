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
#import "XHCFCoverView.h"
#import "PlayViewController.h"

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
    
    XHCFCoverView *coverView = [[XHCFCoverView alloc] initWithFrame:self.view.frame];
    coverView.playVideoBlock = ^(UIButton *button){
        [self playVideoButtonClick:button];
    };
    [coverView showView];
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
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, self.titlesView.width - 20, self.titlesView.height - 20)];
    containerView.backgroundColor = [UIColor whiteColor];
    [self.titlesView addSubview:containerView];
    // 文字
    NSArray *titles = @[@"产品动态", @"站内信", @"课程动态", @"系统消息"];
    NSUInteger count = titles.count;
    
    // 标题按钮的尺寸
    CGFloat titleButtonW = (self.titlesView.width - 20) / count;
    CGFloat titleButtonH = (self.titlesView.height - 20);
    
    // 创建5个标题按钮
    for (NSUInteger i = 0; i < count; i++) {
        XHCFTitleButton *titleButton = [[XHCFTitleButton alloc] init];
        [titleButton addTarget:self action:@selector(titleButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [containerView addSubview:titleButton];
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
    titlesView.backgroundColor =  kColordcdf;
    [self.view addSubview:titlesView];
    self.titlesView = titlesView;
    
    // 标题栏按钮
    [self setupTitleButtons];
}

- (void)playVideoButtonClick:(UIButton *)button {
    NSLog(@"hit me");
    PlayViewController *playVC = [[PlayViewController alloc] init];
    [self.navigationController pushViewController:playVC animated:NO];
}

@end
