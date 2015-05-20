//
//  ViewController.m
//  HallOfFrames
//
//  Created by Bryon Finke on 5/20/15.
//  Copyright (c) 2015 Bryon Finke. All rights reserved.
//

#import "ViewController.h"
#import "PictureCollectionViewCell.h"
#import "Picture.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, PictureCollectionViewCellDelegate>

@property NSArray *pictures;


@property (weak, nonatomic) IBOutlet UICollectionView *pictureCollectionView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Picture *picture1 = [[Picture alloc]init];
    picture1.image = [UIImage imageNamed:@"actor1"];
    self.pictures = [NSArray arrayWithObjects:picture1, nil];
    [self.pictureCollectionView reloadData];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellID" forIndexPath:indexPath];
    cell.delegate = self;
    cell.pictureImage.image = 
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 2;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:indexPath.row];
}

@end
