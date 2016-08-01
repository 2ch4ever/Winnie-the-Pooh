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
    _speechSynthesizer.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)speak:(id)sender {
    AVSpeechSynthesisVoice *voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-US"];
    AVSpeechUtterance *speechUtterance = [[AVSpeechUtterance alloc] initWithString:_textView.text];
    speechUtterance.voice = voice;
    
    [_speechSynthesizer speakUtterance:speechUtterance];
}

- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer willSpeakRangeOfSpeechString:(NSRange)characterRange utterance:(AVSpeechUtterance *)utterance {    
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithString:_textView.text];
    [text addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:characterRange];
    _textView.attributedText = text;
}

- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer didFinishSpeechUtterance:(AVSpeechUtterance *)utterance {
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithAttributedString:_textView.attributedText];
    [text removeAttribute:NSForegroundColorAttributeName range:NSMakeRange(0, [text length])];
    _textView.attributedText = text;
}

@end
