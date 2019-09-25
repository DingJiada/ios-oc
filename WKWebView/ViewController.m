//
//  ViewController.m
//  WKWebView
//
//  Created by Dingjd on 19/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "ViewController.h"
#import "WebKit/WebKit.h"

@interface ViewController ()<WKNavigationDelegate>

@property(nonatomic,strong) WKWebView *webView;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.webView = [[WKWebView alloc] initWithFrame:self.view.bounds];//嵌入一个最简单的webView
    self.webView.navigationDelegate = self;
    
    [self.view addSubview:self.webView];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.baidu.com"]];
    
    [self.webView loadRequest:request];
    
    
}


@end
