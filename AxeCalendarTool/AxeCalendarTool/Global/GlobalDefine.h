//
//  GlobalDefine.h
//  AxeCalendarTool
//
//  Created by guowei on 2017/12/2.
//  Copyright © 2017年 GiantAxe. All rights reserved.
//

#ifndef GlobalDefine_h
#define GlobalDefine_h

#define Axe_WeakSelf(weakSelf) __weak __typeof(self) weakSelf = self

#ifdef DEBUG //... 可变参数
#define  AxeLog(...) NSLog(@"%s 第%d行 \n %@ \n\n",__func__,__LINE__, [NSString stringWithFormat:__VA_ARGS__]);
#else
#define  AxeLog(...)
#endif

/* 判断字典、数组是否为空 */
#define IsDictionaryNull(dict) (nil == dict || ![dict isKindOfClass:[NSDictionary class]]\
|| [dict isKindOfClass:[NSNull class]] || [dict allKeys].count <= 0)
#define IsArrayNull(array) ((nil == array || ![array isKindOfClass:[NSArray class]]\
|| [array isKindOfClass:[NSNull class]] || array.count <= 0))
#define IsStringNull(string) (!string || ![string isKindOfClass:[NSString class]] \
|| string.length <= 0)
#define IsObjectNull(object) (nil == object || [object isKindOfClass:[NSNull class]])

#endif /* GlobalDefine_h */
