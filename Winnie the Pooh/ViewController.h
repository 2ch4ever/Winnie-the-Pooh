//
//  ViewController.h
//  Winnie the Pooh
//
//  Created by Vladimir Orlov on 15.07.16.
//  Copyright © 2016 Vladimir Orlov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController <AVSpeechSynthesizerDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIButton   *speakButton;
@property (strong, nonatomic) AVSpeechSynthesizer *speechSynthesizer;

- (IBAction)speak:(id)sender;

@end

