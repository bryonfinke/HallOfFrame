//
//  PictureCollectionViewCell.h
//  HallOfFrames
//
//  Created by Bryon Finke on 5/20/15.
//  Copyright (c) 2015 Bryon Finke. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PictureCollectionViewCellDelegate <NSObject>

@end

@interface PictureCollectionViewCell : UICollectionViewCell

@property (nonatomic, assign) id <PictureCollectionViewCellDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIImageView *pictureImage;


@end
