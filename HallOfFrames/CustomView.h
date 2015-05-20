//
//  CustomView.h
//  HallOfFrames
//
//  Created by Joseph DiVittorio on 5/20/15.
//  Copyright (c) 2015 Bryon Finke. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomViewDelegate <NSObject>

-(void)customViewCell:(id)cell didTapButton:(UIButton *)button;

@end



@interface CustomView : UIView

@property (nonatomic, assign) id <CustomViewDelegate> delegate;

@end
