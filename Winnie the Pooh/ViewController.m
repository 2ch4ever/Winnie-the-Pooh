//
//  ViewController.m
//  Winnie the Pooh
//
//  Created by Vladimir Orlov on 15.07.16.
//  Copyright © 2016 Vladimir Orlov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)speak:(id)sender {
    AVSpeechUtterance *speechUtterance = [[AVSpeechUtterance alloc] initWithString:_textView.text];
    
    [_speechSynthesizer speakUtterance:speechUtterance];
}

@end
