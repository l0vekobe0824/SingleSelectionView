//
//  SingleSelectionView.m
//  SingleSelectionView
//
//  Created by Hunter on 3/14/13.
//  Copyright (c) 2013 Js.Luo. All rights reserved.
//

#import "SingleSelectionView.h"
#define Size CGSizeMake(26, 26)

@implementation SingleSelectionView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initSize];
        [self initializeView];
        [self initTarget];
    }
    return self;
}

- (id)init
{
    self = [self initWithFrame:CGRectZero];
    if (self) {
        [self initSize];
        [self initializeView];
    }
    return self;
}

- (void)initSize
{
    CGRect rect = self.frame;
    rect.size   = Size;
    self.frame  = rect;
}

- (void)initTarget
{
    [self addTarget:self action:@selector(singleButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)singleButtonClicked:(UIButton *)button
{
    button.selected = !button.selected;
    if (_target && [_target respondsToSelector:_action]) {
        [_target performSelector:_action withObject:self];
    }
}

- (void)setSelected:(BOOL)selected
{
    if (selected) {
        UIImage *stateSelected = [UIImage imageNamed:@"圆2"];
        [self setBackgroundImage:stateSelected forState:UIControlStateNormal];
        [self setBackgroundImage:stateSelected forState:UIControlStateHighlighted];
    }else{
        UIImage *stateNormal = [UIImage imageNamed:@"圆1"];
        [self setBackgroundImage:stateNormal forState:UIControlStateNormal];
        [self setBackgroundImage:stateNormal forState:UIControlStateHighlighted];
    }
    [super setSelected:selected];
}

- (void)initializeView
{
    self.adjustsImageWhenHighlighted = NO;
    self.selected = NO;
}

- (void)addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
    if (target == self) {
        [super addTarget:target action:action forControlEvents:controlEvents];
    }else{
        _target = target;
        _action = action;
    }
}

@end
