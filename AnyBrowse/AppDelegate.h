//
//  AppDelegate.h
//  AnyBrowse
//
//  Created by Vladan Randjelovic on 26/05/2020.
//  Copyright © 2020 Vladan Randjelovic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

