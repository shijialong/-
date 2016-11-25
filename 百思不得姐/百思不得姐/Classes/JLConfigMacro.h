//
//  JLConfigMacro.h
//  百思不得姐
//
//  Created by shijialong on 2016/10/28.
//  Copyright © 2016年 shijialong. All rights reserved.
//

#ifndef JLConfigMacro_h
#define JLConfigMacro_h

/**** 屏幕宽高 ****/
#define SCREEN_WITH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

/** 日志** */
#ifdef DEBUG
#define JLLog(...) NSLog(__VA_ARGS__)
#else
#define JLLog(...)
#endif

#define JLLogFunc JLLog(@"%s",__func__)

/*** 颜色 ***/
#define JLColorA(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]
#define JLColor(r, g, b) JLColorA((r), (g), (b), 255)
#define JLRandomColor JLColor(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255))
#define JLConmmenBgColor JLColor(206, 206, 206)

#endif /* JLConfigMacro_h */
