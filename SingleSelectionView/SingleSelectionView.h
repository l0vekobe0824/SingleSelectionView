//
//  SingleSelectionView.h
//  SingleSelectionView
//
//  Created by Hunter on 3/14/13.
//  Copyright (c) 2013 wch. All rights reserved.
//

#import <UIKit/UIKit.h>


//---------------------------------------
// The same use as UIButton
//---------------------------------------
@interface SingleSelectionView : UIButton
{
    @package
    id      _target;
    SEL     _action;
}

@end
