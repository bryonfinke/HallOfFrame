//
//  CustomView.m
//  HallOfFrames
//
//  Created by Joseph DiVittorio on 5/20/15.
//  Copyright (c) 2015 Bryon Finke. All rights reserved.
//

#import "CustomView.h"
#import "PictureCollectionViewCell.h"
#import "ViewController.h"

@implementation CustomView
- (IBAction)onBlueTapped:(UIButton *)sender {
    
}

- (IBAction)onRedTapped:(UIButton *)sender {
    [self.delegate customViewCell:self didTapButton:sender];
}

- (IBAction)onGreenTapped:(UIButton *)sender {

}


@end
