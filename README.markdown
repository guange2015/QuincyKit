# ios 集成指南


一、 通过[CocoaPods](https://github.com/CocoaPods/CocoaPods)进行安装
-------
    
```pod 'QuincyKit', :git => 'https://github.com/hhuai/QuincyKit.git'```


二、手动安装方式
------

1. 把 `BWQuincyManager.h`, `BWQuincyManager.m` and `Quincy.bundle` 拖到你现有的工程

1. 把 `CrashReporter.framework` 也拖到工程里面

3. 在工程的Build->"Other Linker Flags"中加入  "-all_load"
4. 在工程中添加 `SystemConfiguration.framework` 
5. 在 `appDelegate.h` 中包含头文件

    ```#import "BWQuincyManager.h"```

6. 在applicationDidFinishLaunching函数中初始化

    ```[[BWQuincyManager sharedQuincyManager] setSubmissionURL:@"http://yourserver.url"];```

  - yourserver.url请去 [holdbug.com](http://holdbug.com) 免费申请
      
7. 搞定


# 注意

  本sdk直接fork的QuincyKit, 目前可以兼容原版，但最好还是下本站的修改版。

    Author: Andreas Linde <mail@andreaslinde.de>

    Copyright (c) 2009-2012 Andreas Linde.
    All rights reserved.

    Permission is hereby granted, free of charge, to any person
    obtaining a copy of this software and associated documentation
    files (the "Software"), to deal in the Software without
    restriction, including without limitation the rights to use,
    copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the
    Software is furnished to do so, subject to the following
    conditions:

    The above copyright notice and this permission notice shall be
    included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
    OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
    NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
    HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
    WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
    FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
    OTHER DEALINGS IN THE SOFTWARE.


# Main features of QuincyKit

- (Automatically) send crash reports to a developers database
- Let the user decide per crash to (not) send data or always send
- The user has the option to provide additional information in the settings, like email address for contacting the user
- Give the user immediate feedback if the crash is known and will be fixed in the next update, or if the update is already waiting at Apple for approval, or if the update is already available to install


# Main features on backend side for the developer

- Admin interface to manage the incoming crash log data
- Script to symbolicate crash logs on the database, needs to be run on a mac with access to the DSYM files
- Automatic grouping of crash files for most likely same kind of crashes
- Maintain crash reports and sort them by using simple patterns. Automatically know how many times a bug has occured and easily filter the new ones in the DB
- Assign bugfix versions for each crash group and define a status for each version, which can be used to provide some feedback for the user
  like: Bug already fixed, new version with bugfix already available, etc.






