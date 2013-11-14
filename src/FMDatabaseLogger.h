//
//  FMDatabaseLogger.h
//  fmdb
//
//  Created by Shay Erlichmen on 11/14/13.
//
//

#ifndef fmdb_FMDatabaseLogger_h
#define fmdb_FMDatabaseLogger_h

#ifndef USE_LUMBERJACK
    #define DDLogError NSLog
    #define DDLogWarn NSLog
    #define DDLogInfo NSLog
    #define DDLogDebug NSLog
    #define DDLogVerbose NSLog
#else
    #import "DDLog.h"
#endif

#endif
