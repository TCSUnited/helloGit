//
//  AppDelegate.h
//  navigateNextTextField
//
//  Created by United TCS Mini on 17/01/17.
//  Copyright © 2017 United TCS Mini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

