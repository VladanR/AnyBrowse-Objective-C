//
//  ViewController.m
//  AnyBrowse
//
//  Created by Vladan Randjelovic on 26/05/2020.
//  Copyright © 2020 Vladan Randjelovic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.google.com"]]];
   
    [self.webView addSubview:self.actIndicator];
    
    self.webView.navigationDelegate = self;
}


- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
    
    [self.actIndicator startAnimating];

}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    
    [self.actIndicator stopAnimating];
    
}

- (IBAction)forward:(id)sender {
    
    if ([self.webView canGoForward]) {
           
         [self.webView goForward];
           
       }
    
}

- (IBAction)back:(id)sender {
    
    if ([self.webView canGoBack]) {
        
      [self.webView goBack];
        
    }
    
}

- (IBAction)refresh:(id)sender {
    
    [self.webView reload];
    
}

- (IBAction)stop:(id)sender {
    
    [self.webView stopLoading];
    
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://%@", self.searchBar.text]]]];
    [searchBar resignFirstResponder];
    
}

@end
