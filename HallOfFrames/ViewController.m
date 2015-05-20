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
#import "CustomView.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, CustomViewDelegate>

@property NSArray *pictures;
@property (weak, nonatomic) IBOutlet CustomView *custView;
@property NSIndexPath *indexPath;
@property CustomView *myNib;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Picture *picture1 = [[Picture alloc]init];
    picture1.image = [UIImage imageNamed:@"actor1"];
    picture1.frameColor = [UIColor lightGrayColor];
    Picture *picture2 = [[Picture alloc]init];
    picture2.image = [UIImage imageNamed:@"actor2"];
    picture2.frameColor = [UIColor lightGrayColor];
    Picture *picture3 = [[Picture alloc]init];
    picture3.image = [UIImage imageNamed:@"actor3"];
    picture3.frameColor = [UIColor lightGrayColor];
    Picture *picture4 = [[Picture alloc]init];
    picture4.image = [UIImage imageNamed:@"actor4"];
    picture4.frameColor = [UIColor lightGrayColor];
    Picture *picture5 = [[Picture alloc]init];
    picture5.image = [UIImage imageNamed:@"actor5"];
    picture5.frameColor = [UIColor lightGrayColor];
    self.pictures = [NSArray arrayWithObjects:picture1,picture2, picture3, picture4, picture5, nil];
    self.myNib.delegate = self;
    [self.pictureCollectionView reloadData];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellID" forIndexPath:indexPath];
    cell.pictureImage.image = [[self.pictures objectAtIndex:indexPath.row] image];
    cell.backgroundColor = [[self.pictures objectAtIndex:indexPath.row] frameColor];
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.pictures.count;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    self.custView = [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:indexPath.row];
    [self.view addSubview:self.custView];
}

-(void)customViewCell:(id)cell didTapButton:(UIButton *)button {
    NSIndexPath *selectedIndexPath = [[self.pictureCollectionView indexPathsForSelectedItems]firstObject];
    Picture *picture = [self.pictures objectAtIndex:selectedIndexPath.row];
    picture.frameColor = button.backgroundColor;
    [self.pictureCollectionView reloadData];
}

@end
