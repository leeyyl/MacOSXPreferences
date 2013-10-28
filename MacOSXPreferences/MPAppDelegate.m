//
//  MPAppDelegate.m
//  MacOSXPreferences
//
//  Created by WallaceYYLi on 13-10-28.
//  Copyright (c) 2013年 MicroChild. All rights reserved.
//

#import "MPAppDelegate.h"

@implementation MPAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    NSTask *task;
    task = [[NSTask alloc] init];
    [task setLaunchPath:@"/usr/bin/defaults"];
    
//    NSArray *arguments;
//    arguments = [NSArray arrayWithObjects: @"write", @"com.apple.screencapture", /*@"type"*/@"location", /*@"BMP"*/@"/Users/Wallace/Documents", nil];
//    [task setArguments: arguments];
    
    NSArray *arguments = [NSArray arrayWithObjects:@"write", @"com.apple.Safari", @"WebKitHistoryAgeInDaysLimit", @"", nil];
    [task setArguments:arguments];
    
    /******************************************************************/
    // Safari
    //defaults write com.apple.Safari WebKitHistoryAgeInDaysLimit XX
    //defaults write com.apple.Safari WebKitHistoryItemLimit XX
    //defaults write com.apple.Safari HistoryAgeInDaysLimit XX
    /******************************************************************/
    
    /******************************************************************/
    // Finder
    // Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
    //defaults write com.apple.finder QuitMenuItem -bool true
    //defaults write NSGlobalDomain AppleShowAllExtensions -bool true
    // Finder: show hidden files by default
    //defaults write com.apple.finder AppleShowAllFiles -bool true
    // Finder: show all filename extensions
    //defaults write NSGlobalDomain AppleShowAllExtensions -bool true
    // Finder: show status bar
    //defaults write com.apple.finder ShowStatusBar -bool true
    // Finder: show path bar
    //defaults write com.apple.finder ShowPathBar -bool true
    // Finder: allow text selection in Quick Look
    //defaults write com.apple.finder QLEnableTextSelection -bool true
    // Display full POSIX path as Finder window title
    //defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
    // Show the ~/Library folder
    //chflags nohidden ~/Library
    // Disable the warning before emptying the Trash
    //defaults write com.apple.finder WarnOnEmptyTrash -bool false
    // Empty Trash securely by default
    //defaults write com.apple.finder EmptyTrashSecurely -bool true
    /******************************************************************/
    
    /******************************************************************/
    // Login Window /Library/Preferences
    //defaults write com.apple.loginwindow LoginwindowText XX
    //defaults write com.apple.loginwindow PowerOffDisabled YES/NO
    /******************************************************************/
    
    /******************************************************************/
    // Dock
    /******************************************************************/
    // 2D/3D
    //defaults write com.apple.dock no-glass -boolean YES; killall Dock
    //defaults write com.apple.dock no-glass -boolean NO; killall Dock
    // Minimize effect
    //defaults write com.apple.dock mineffect suck
    // Pin the Dock to the Right:
    //defaults write com.apple.dock pinning -string "start"
    // Pin the Dock to the Left:
    //defaults write com.apple.dock pinning -string "end"
    // Pin the Dock to the default position (center):
    //defaults write com.apple.dock pinning -string "middle"
    // Orientation
    //defaults write com.apple.Dock orientation -string top
    // Prevent changes to Dock contents
    //defaults write com.apple.dock contents-immutable -boolean
    // Prevent changes to Dock contents for all users
    //defaults write /Library/Preferences/com.apple.dock contents-immutable -boolean
    // Show only running applications
    //defaults write com.apple.dock static-only -boolean
    // Prevent changes to Dock size
    //defaults write com.apple.dock size-immutable -boolean
    // Enable single application mode
    //defaults write com.apple.dock single-app -boolean
    // Autohide
    //defaults write com.apple.dock autohide -boolean
    // Bounce Applications
    //defaults write com.apple.dock no-bouncing -boolean-neg
    // Animate launch
    //defaults write com.apple.dock launchanim -boolean
    // Dim hidden apps
    //defaults write com.apple.dock showhidden -boolean
    
//    NSPipe *pipe;
//    pipe = [NSPipe pipe];
//    [task setStandardOutput: pipe];
//    
//    NSFileHandle *file;
//    file = [pipe fileHandleForReading];
    
    [task launch];
    
//    NSData *data;
//    data = [file readDataToEndOfFile];
//    
//    NSString *string;
//    string = [[NSString alloc] initWithData: data
//                                   encoding: NSUTF8StringEncoding];
//    NSLog (@"got\n%@", string);
}

@end
