package com.yelp.android.ax;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteStatement;
import android.os.AsyncTask;
import android.util.Log;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.database.ColumnModifier;
import com.yelp.android.database.ColumnType;
import com.yelp.android.database.aa;
import com.yelp.android.database.ab;
import com.yelp.android.database.p;
import com.yelp.android.database.t;
import com.yelp.android.database.y;

public class a
  implements t
{
  public static final aa a = new ab("business_search").a(new p("_id", ColumnType.INTEGER, ColumnModifier.PRIMARY_KEY_AUTOINCREMENT)).a(new p("url_descriptor", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new p("raw_response", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a("descriptor_idx", new String[] { "url_descriptor" }).a();
  private final AsyncTask<?, ?, SQLiteDatabase> b;
  private SQLiteStatement c;
  private SQLiteStatement d;
  private SQLiteStatement e;
  
  public a(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    b = paramAsyncTask;
  }
  
  private static void b(SQLiteDatabase paramSQLiteDatabase)
  {
    if ((paramSQLiteDatabase != null) && (paramSQLiteDatabase.inTransaction())) {
      paramSQLiteDatabase.endTransaction();
    }
  }
  
  public static y e()
  {
    return new b();
  }
  
  private void f()
  {
    for (;;)
    {
      try
      {
        Object localObject3 = (SQLiteDatabase)b.get();
        Object localObject1 = ((SQLiteDatabase)localObject3).query("business_search", new String[] { "_id" }, null, null, null, null, null);
        if (localObject1 == null) {
          break label242;
        }
        if (((Cursor)localObject1).moveToFirst()) {}
        SQLiteDatabase localSQLiteDatabase;
        int i = -1;
      }
      catch (Exception localObject2)
      {
        try
        {
          i = ((Cursor)localObject1).getInt(0);
          ((Cursor)localObject1).close();
          if (i != -1) {
            localObject1 = localObject3;
          }
        }
        catch (Exception localException3)
        {
          BaseYelpApplication.a("AdapterBusinessSearch", "Error finding oldest row in business search cache: " + localException3.toString(), new Object[] { localException3 });
        }
        try
        {
          localSQLiteDatabase = (SQLiteDatabase)b.get();
          localObject1 = localSQLiteDatabase;
          localObject3 = localSQLiteDatabase;
          localSQLiteDatabase.beginTransaction();
          localObject1 = localSQLiteDatabase;
          localObject3 = localSQLiteDatabase;
          localSQLiteDatabase.delete("business_search", "_id = ? ", new String[] { String.valueOf(i) });
          localObject1 = localSQLiteDatabase;
          localObject3 = localSQLiteDatabase;
          localSQLiteDatabase.setTransactionSuccessful();
          b(localSQLiteDatabase);
          return;
        }
        catch (Exception localException2) {}finally
        {
          try
          {
            BaseYelpApplication.a("AdapterBusinessSearch", "Error deleting oldest row in business search cache: " + localException2.toString(), new Object[] { localException2 });
            b(localException1);
            return;
          }
          finally
          {
            for (;;)
            {
              Object localObject4;
              Object localObject6 = localObject2;
            }
          }
          localObject2 = finally;
          localObject6 = localException2;
          localObject4 = localObject2;
        }
        localException1 = localException1;
        Log.w("AdapterBusinessSearch", "Issues removing old entry", localException1);
        return;
      }
    }
    b((SQLiteDatabase)localObject6);
    throw ((Throwable)localObject4);
    label242:
    BaseYelpApplication.a("AdapterBusinessSearch", "Error deleting oldest row in business search cache, cursor is null.", new Object[0]);
  }
  
  public long a()
  {
    try
    {
      if (c == null) {
        return -1L;
      }
      long l = c.simpleQueryForLong();
      return l;
    }
    catch (Exception localException)
    {
      BaseYelpApplication.a("AdapterBusinessSearch", "Error executing row count in business search cache: " + localException.toString(), new Object[] { localException });
    }
    return 0L;
  }
  
  /* Error */
  public String a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: getfield 184	com/yelp/android/ax/a:d	Landroid/database/sqlite/SQLiteStatement;
    //   9: astore 5
    //   11: aload 5
    //   13: ifnonnull +10 -> 23
    //   16: aload 4
    //   18: astore_1
    //   19: aload_0
    //   20: monitorexit
    //   21: aload_1
    //   22: areturn
    //   23: aload_0
    //   24: getfield 184	com/yelp/android/ax/a:d	Landroid/database/sqlite/SQLiteStatement;
    //   27: iconst_1
    //   28: aload_1
    //   29: invokevirtual 188	android/database/sqlite/SQLiteStatement:bindString	(ILjava/lang/String;)V
    //   32: invokestatic 193	android/os/SystemClock:elapsedRealtime	()J
    //   35: lstore_2
    //   36: aload_0
    //   37: getfield 184	com/yelp/android/ax/a:d	Landroid/database/sqlite/SQLiteStatement;
    //   40: invokevirtual 196	android/database/sqlite/SQLiteStatement:simpleQueryForString	()Ljava/lang/String;
    //   43: astore_1
    //   44: ldc -120
    //   46: ldc -58
    //   48: iconst_1
    //   49: anewarray 4	java/lang/Object
    //   52: dup
    //   53: iconst_0
    //   54: invokestatic 193	android/os/SystemClock:elapsedRealtime	()J
    //   57: lload_2
    //   58: lsub
    //   59: invokestatic 203	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   62: aastore
    //   63: invokestatic 163	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   66: aload_0
    //   67: getfield 184	com/yelp/android/ax/a:d	Landroid/database/sqlite/SQLiteStatement;
    //   70: invokevirtual 206	android/database/sqlite/SQLiteStatement:clearBindings	()V
    //   73: goto -54 -> 19
    //   76: astore_1
    //   77: aconst_null
    //   78: astore_1
    //   79: goto -6 -> 73
    //   82: astore_1
    //   83: aload_0
    //   84: monitorexit
    //   85: aload_1
    //   86: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	this	a
    //   0	87	1	paramString	String
    //   35	23	2	l	long
    //   1	16	4	localObject	Object
    //   9	3	5	localSQLiteStatement	SQLiteStatement
    // Exception table:
    //   from	to	target	type
    //   32	73	76	android/database/sqlite/SQLiteDoneException
    //   5	11	82	finally
    //   23	32	82	finally
    //   32	73	82	finally
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase)
  {
    c = paramSQLiteDatabase.compileStatement("SELECT COUNT(*) FROM business_search");
    StringBuilder localStringBuilder = new StringBuilder(500);
    localStringBuilder.append("SELECT ");
    localStringBuilder.append("raw_response").append(" ");
    localStringBuilder.append("FROM ");
    localStringBuilder.append("business_search");
    localStringBuilder.append(" WHERE ");
    localStringBuilder.append("url_descriptor");
    localStringBuilder.append(" = ? LIMIT 1");
    d = paramSQLiteDatabase.compileStatement(localStringBuilder.toString());
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("SELECT ");
    localStringBuilder.append("url_descriptor");
    localStringBuilder.append(" FROM ");
    localStringBuilder.append("business_search");
    localStringBuilder.append(" ORDER BY ");
    localStringBuilder.append("_id");
    localStringBuilder.append(" DESC LIMIT 1 ");
    e = paramSQLiteDatabase.compileStatement(localStringBuilder.toString());
  }
  
  /* Error */
  public void a(com.yelp.android.appdata.webrequests.BusinessSearchRequest paramBusinessSearchRequest, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_3
    //   5: aload_0
    //   6: invokevirtual 236	com/yelp/android/ax/a:a	()J
    //   9: ldc2_w 237
    //   12: lcmp
    //   13: iflt +10 -> 23
    //   16: aload_0
    //   17: invokespecial 240	com/yelp/android/ax/a:f	()V
    //   20: goto -15 -> 5
    //   23: new 242	android/content/ContentValues
    //   26: dup
    //   27: invokespecial 243	android/content/ContentValues:<init>	()V
    //   30: astore 5
    //   32: aload 5
    //   34: ldc 49
    //   36: aload_1
    //   37: invokevirtual 248	com/yelp/android/appdata/webrequests/BusinessSearchRequest:getCacheDescriptor	()Ljava/lang/String;
    //   40: invokevirtual 252	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: aload 5
    //   45: ldc 57
    //   47: aload_2
    //   48: invokevirtual 252	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   51: aload 4
    //   53: astore_1
    //   54: aload_0
    //   55: getfield 75	com/yelp/android/ax/a:b	Landroid/os/AsyncTask;
    //   58: invokevirtual 100	android/os/AsyncTask:get	()Ljava/lang/Object;
    //   61: checkcast 80	android/database/sqlite/SQLiteDatabase
    //   64: astore_2
    //   65: aload_2
    //   66: invokevirtual 119	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   69: aload_2
    //   70: ldc 21
    //   72: aconst_null
    //   73: aload 5
    //   75: invokevirtual 256	android/database/sqlite/SQLiteDatabase:insertOrThrow	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   78: pop2
    //   79: aload_2
    //   80: invokevirtual 132	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   83: aload_2
    //   84: invokestatic 134	com/yelp/android/ax/a:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   87: return
    //   88: astore_1
    //   89: aload_3
    //   90: astore_2
    //   91: aload_1
    //   92: astore_3
    //   93: aload_2
    //   94: astore_1
    //   95: ldc -120
    //   97: new 146	java/lang/StringBuilder
    //   100: dup
    //   101: invokespecial 147	java/lang/StringBuilder:<init>	()V
    //   104: ldc_w 258
    //   107: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: aload_3
    //   111: invokevirtual 157	java/lang/Exception:toString	()Ljava/lang/String;
    //   114: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 158	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: iconst_1
    //   121: anewarray 4	java/lang/Object
    //   124: dup
    //   125: iconst_0
    //   126: aload_3
    //   127: aastore
    //   128: invokestatic 163	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   131: aload_2
    //   132: invokestatic 134	com/yelp/android/ax/a:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   135: return
    //   136: astore_3
    //   137: aload_1
    //   138: astore_2
    //   139: aload_3
    //   140: astore_1
    //   141: aload_2
    //   142: invokestatic 134	com/yelp/android/ax/a:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   145: aload_1
    //   146: athrow
    //   147: astore_1
    //   148: goto -7 -> 141
    //   151: astore_3
    //   152: goto -59 -> 93
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	155	0	this	a
    //   0	155	1	paramBusinessSearchRequest	com.yelp.android.appdata.webrequests.BusinessSearchRequest
    //   0	155	2	paramString	String
    //   4	123	3	localBusinessSearchRequest	com.yelp.android.appdata.webrequests.BusinessSearchRequest
    //   136	4	3	localObject1	Object
    //   151	1	3	localException	Exception
    //   1	51	4	localObject2	Object
    //   30	44	5	localContentValues	android.content.ContentValues
    // Exception table:
    //   from	to	target	type
    //   54	65	88	java/lang/Exception
    //   54	65	136	finally
    //   95	131	136	finally
    //   65	83	147	finally
    //   65	83	151	java/lang/Exception
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_0
    //   5: getfield 75	com/yelp/android/ax/a:b	Landroid/os/AsyncTask;
    //   8: invokevirtual 100	android/os/AsyncTask:get	()Ljava/lang/Object;
    //   11: checkcast 80	android/database/sqlite/SQLiteDatabase
    //   14: astore_2
    //   15: aload_2
    //   16: invokevirtual 119	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   19: ldc -120
    //   21: ldc_w 260
    //   24: iconst_1
    //   25: anewarray 4	java/lang/Object
    //   28: dup
    //   29: iconst_0
    //   30: aload_2
    //   31: ldc 21
    //   33: ldc_w 262
    //   36: aconst_null
    //   37: invokevirtual 129	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   40: invokestatic 267	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   43: aastore
    //   44: invokestatic 163	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   47: aload_2
    //   48: invokevirtual 132	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   51: aload_2
    //   52: invokestatic 134	com/yelp/android/ax/a:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   55: return
    //   56: astore_1
    //   57: aload_3
    //   58: astore_2
    //   59: aload_1
    //   60: astore_3
    //   61: aload_2
    //   62: astore_1
    //   63: ldc -120
    //   65: new 146	java/lang/StringBuilder
    //   68: dup
    //   69: invokespecial 147	java/lang/StringBuilder:<init>	()V
    //   72: ldc_w 269
    //   75: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: aload_3
    //   79: invokevirtual 157	java/lang/Exception:toString	()Ljava/lang/String;
    //   82: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: invokevirtual 158	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   88: iconst_1
    //   89: anewarray 4	java/lang/Object
    //   92: dup
    //   93: iconst_0
    //   94: aload_3
    //   95: aastore
    //   96: invokestatic 163	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   99: aload_2
    //   100: invokestatic 134	com/yelp/android/ax/a:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   103: return
    //   104: astore_3
    //   105: aload_1
    //   106: astore_2
    //   107: aload_3
    //   108: astore_1
    //   109: aload_2
    //   110: invokestatic 134	com/yelp/android/ax/a:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   113: aload_1
    //   114: athrow
    //   115: astore_1
    //   116: goto -7 -> 109
    //   119: astore_3
    //   120: goto -59 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	123	0	this	a
    //   1	1	1	localObject1	Object
    //   56	4	1	localException1	Exception
    //   62	52	1	localObject2	Object
    //   115	1	1	localObject3	Object
    //   14	96	2	localObject4	Object
    //   3	92	3	localException2	Exception
    //   104	4	3	localObject5	Object
    //   119	1	3	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   4	15	56	java/lang/Exception
    //   4	15	104	finally
    //   63	99	104	finally
    //   15	51	115	finally
    //   15	51	119	java/lang/Exception
  }
  
  public String c()
  {
    Object localObject = new StringBuilder(500);
    ((StringBuilder)localObject).append("SELECT ");
    ((StringBuilder)localObject).append("url_descriptor");
    ((StringBuilder)localObject).append(" ");
    ((StringBuilder)localObject).append("FROM ");
    ((StringBuilder)localObject).append("business_search");
    StringBuilder localStringBuilder = new StringBuilder(1024);
    localStringBuilder.append("Biz Search Cache:\n");
    try
    {
      SQLiteDatabase localSQLiteDatabase = (SQLiteDatabase)b.get();
      localObject = localSQLiteDatabase.rawQuery(((StringBuilder)localObject).toString(), null);
      if (localObject != null) {
        try
        {
          if (((Cursor)localObject).moveToFirst())
          {
            localStringBuilder.append(((Cursor)localObject).getString(0));
            localStringBuilder.append("\n");
            localStringBuilder.append("---------------------------------------------\n");
            while (((Cursor)localObject).moveToNext())
            {
              localStringBuilder.append(((Cursor)localObject).getString(0));
              localStringBuilder.append("\n");
              localStringBuilder.append("---------------------------------------------\n");
            }
          }
          return localStringBuilder.toString();
        }
        catch (Exception localException2)
        {
          BaseYelpApplication.a("AdapterBusinessSearch", "Error selecting cache record from db: " + localException2.toString(), new Object[0]);
          ((Cursor)localObject).close();
        }
      }
      return "";
    }
    catch (Exception localException1)
    {
      Log.w("AdapterBusinessSearch", "Could not open database", localException1);
    }
  }
  
  public String d()
  {
    if (e == null) {
      return null;
    }
    try
    {
      String str = e.simpleQueryForString();
      return str;
    }
    catch (SQLiteDoneException localSQLiteDoneException) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ax.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */