package com.yelp.android.database;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.os.AsyncTask;
import com.yelp.android.serializable.YelpBusiness;

class f
  extends AsyncTask<YelpBusiness, Void, Void>
{
  private final AsyncTask<?, ?, SQLiteDatabase> a;
  private final SQLiteStatement b;
  
  public f(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask, SQLiteStatement paramSQLiteStatement)
  {
    a = paramAsyncTask;
    b = paramSQLiteStatement;
  }
  
  /* Error */
  protected Void a(YelpBusiness... paramVarArgs)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 17	com/yelp/android/database/f:a	Landroid/os/AsyncTask;
    //   4: invokevirtual 29	android/os/AsyncTask:get	()Ljava/lang/Object;
    //   7: checkcast 31	android/database/sqlite/SQLiteDatabase
    //   10: astore_2
    //   11: aload_1
    //   12: iconst_0
    //   13: aaload
    //   14: astore_1
    //   15: aload_2
    //   16: ldc 33
    //   18: ldc 35
    //   20: iconst_1
    //   21: anewarray 37	java/lang/String
    //   24: dup
    //   25: iconst_0
    //   26: aload_1
    //   27: invokevirtual 43	com/yelp/android/serializable/YelpBusiness:getId	()Ljava/lang/String;
    //   30: aastore
    //   31: invokevirtual 47	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   34: pop
    //   35: aload_0
    //   36: getfield 19	com/yelp/android/database/f:b	Landroid/database/sqlite/SQLiteStatement;
    //   39: invokestatic 52	com/yelp/android/database/d:a	(Landroid/database/sqlite/SQLiteStatement;)J
    //   42: ldc2_w 53
    //   45: lcmp
    //   46: iflt +82 -> 128
    //   49: aload_2
    //   50: ldc 33
    //   52: iconst_2
    //   53: anewarray 37	java/lang/String
    //   56: dup
    //   57: iconst_0
    //   58: ldc 56
    //   60: aastore
    //   61: dup
    //   62: iconst_1
    //   63: ldc 58
    //   65: aastore
    //   66: aconst_null
    //   67: aconst_null
    //   68: aconst_null
    //   69: aconst_null
    //   70: aconst_null
    //   71: ldc 60
    //   73: invokevirtual 64	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   76: astore_3
    //   77: aload_3
    //   78: ifnull +50 -> 128
    //   81: aload_3
    //   82: invokeinterface 70 1 0
    //   87: ifle +35 -> 122
    //   90: aload_3
    //   91: invokeinterface 74 1 0
    //   96: ifeq +26 -> 122
    //   99: aload_2
    //   100: ldc 33
    //   102: ldc 76
    //   104: iconst_1
    //   105: anewarray 37	java/lang/String
    //   108: dup
    //   109: iconst_0
    //   110: aload_3
    //   111: iconst_0
    //   112: invokeinterface 80 2 0
    //   117: aastore
    //   118: invokevirtual 47	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   121: pop
    //   122: aload_3
    //   123: invokeinterface 83 1 0
    //   128: aload_2
    //   129: ldc 33
    //   131: aconst_null
    //   132: aload_1
    //   133: invokestatic 86	com/yelp/android/database/d:b	(Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/ContentValues;
    //   136: invokevirtual 90	android/database/sqlite/SQLiteDatabase:insertOrThrow	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   139: pop2
    //   140: aconst_null
    //   141: areturn
    //   142: astore_1
    //   143: ldc 92
    //   145: ldc 94
    //   147: aload_1
    //   148: invokestatic 100	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   151: pop
    //   152: aconst_null
    //   153: areturn
    //   154: astore 4
    //   156: ldc 92
    //   158: ldc 102
    //   160: iconst_1
    //   161: anewarray 104	java/lang/Object
    //   164: dup
    //   165: iconst_0
    //   166: aload 4
    //   168: aastore
    //   169: invokestatic 109	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   172: goto -50 -> 122
    //   175: astore_1
    //   176: ldc 92
    //   178: ldc 111
    //   180: iconst_1
    //   181: anewarray 104	java/lang/Object
    //   184: dup
    //   185: iconst_0
    //   186: aload_1
    //   187: aastore
    //   188: invokestatic 109	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   191: aconst_null
    //   192: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	193	0	this	f
    //   0	193	1	paramVarArgs	YelpBusiness[]
    //   10	119	2	localSQLiteDatabase	SQLiteDatabase
    //   76	47	3	localCursor	android.database.Cursor
    //   154	13	4	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   0	11	142	java/lang/Exception
    //   99	122	154	java/lang/Exception
    //   128	140	175	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */