//
//  UIView+Night.m
//  UIView+Night
//
//  Copyright (c) 2015 Draveness. All rights reserved.
//
//  These files are generated by ruby script, if you want to modify code
//  in this file, you are supposed to update the ruby code, run it and
//  test it. And finally open a pull request.

#import "UIView+Night.h"
#import "DKNightVersionManager.h"
#import <objc/runtime.h>

@interface UIView ()

@property (nonatomic, strong) NSMutableDictionary<NSString *, DKPicker> *pickers;

@end

@implementation UIView (Night)


- (DKColorPicker)dk_backgroundColorPicker {
    return objc_getAssociatedObject(self, @selector(dk_backgroundColorPicker));
}

- (void)dk_setBackgroundColorPicker:(DKColorPicker)picker {
    objc_setAssociatedObject(self, @selector(dk_backgroundColorPicker), picker, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.backgroundColor = picker();
    [self.pickers setValue:[picker copy] forKey:@"setBackgroundColor:"];
}

- (DKColorPicker)dk_tintColorPicker {
    return objc_getAssociatedObject(self, @selector(dk_tintColorPicker));
}

- (void)dk_setTintColorPicker:(DKColorPicker)picker {
    objc_setAssociatedObject(self, @selector(dk_tintColorPicker), picker, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.tintColor = picker();
    [self.pickers setValue:[picker copy] forKey:@"setTintColor:"];
}


@end