//
//  ECOnBoardingScreenTemplate.h
//  ElastiCode
//
//  Created by Tomer Shkolnik on 2/11/15.
//  Copyright (c) 2015 Elasticode. All rights reserved.
//

#import "ECOnBoardingScreenTemplate.h"

@interface ECOnBoardingScreenTemplate6 : ECOnBoardingScreenTemplate

// CTA buttons
@property (nonatomic,strong) ECOnBoardingButtonElement *ctaButton;
@property (nonatomic,strong) ECOnBoardingButtonElement *ctaButton2;
@property (nonatomic,strong) ECOnBoardingButtonElement *ctaButton3;

// Label
@property (nonatomic, strong) ECOnBoardingLabelElement* label;

// Background
@property (nonatomic,strong) UIColor* backgroundColor;

@end
