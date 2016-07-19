package com.yelp.android.ca;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteStatement;
import android.os.AsyncTask;
import android.util.Log;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest;
import com.yelp.android.database.ColumnModifier;
import com.yelp.android.database.ColumnType;
import com.yelp.android.database.f;
import com.yelp.android.database.g.c;
import com.yelp.android.database.i;
import com.yelp.android.database.m;
import com.yelp.android.database.n;

public class a
  implements g.c
{
  public static final m a = new n("business_search").a(new f("_id", ColumnType.INTEGER, ColumnModifier.PRIMARY_KEY_AUTOINCREMENT)).a(new f("url_descriptor", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new f("raw_response", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a("descriptor_idx", new String[] { "url_descriptor" }).a();
  private final AsyncTask<?, ?, SQLiteDatabase> b;
  private SQLiteStatement c;
  private SQLiteStatement d;
  private SQLiteStatement e;
  
  public a(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    b = paramAsyncTask;
  }
  
  private void a(SQLiteDatabase paramSQLiteDatabase, ContentValues paramContentValues)
  {
    Cursor localCursor = paramSQLiteDatabase.rawQuery(1024 + "SELECT " + "_id" + " FROM " + "business_search" + " WHERE " + "url_descriptor" + " = ?", new String[] { (String)paramContentValues.get("url_descriptor") });
    if (localCursor.getCount() == 0)
    {
      paramSQLiteDatabase.insert("business_search", null, paramContentValues);
      return;
    }
    localCursor.moveToFirst();
    paramSQLiteDatabase.update("business_search", paramContentValues, "_id= ?", new String[] { Integer.toString(localCursor.getInt(0)) });
  }
  
  private static void b(SQLiteDatabase paramSQLiteDatabase)
  {
    if ((paramSQLiteDatabase != null) && (paramSQLiteDatabase.inTransaction())) {
      paramSQLiteDatabase.endTransaction();
    }
  }
  
  public static i d()
  {
    return new a.1();
  }
  
  private void e()
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
    //   6: getfield 222	com/yelp/android/ca/a:d	Landroid/database/sqlite/SQLiteStatement;
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
    //   24: getfield 222	com/yelp/android/ca/a:d	Landroid/database/sqlite/SQLiteStatement;
    //   27: iconst_1
    //   28: aload_1
    //   29: invokevirtual 226	android/database/sqlite/SQLiteStatement:bindString	(ILjava/lang/String;)V
    //   32: invokestatic 231	android/os/SystemClock:elapsedRealtime	()J
    //   35: lstore_2
    //   36: aload_0
    //   37: getfield 222	com/yelp/android/ca/a:d	Landroid/database/sqlite/SQLiteStatement;
    //   40: invokevirtual 234	android/database/sqlite/SQLiteStatement:simpleQueryForString	()Ljava/lang/String;
    //   43: astore_1
    //   44: ldc -72
    //   46: ldc -20
    //   48: iconst_1
    //   49: anewarray 4	java/lang/Object
    //   52: dup
    //   53: iconst_0
    //   54: invokestatic 231	android/os/SystemClock:elapsedRealtime	()J
    //   57: lload_2
    //   58: lsub
    //   59: invokestatic 241	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   62: aastore
    //   63: invokestatic 201	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   66: aload_0
    //   67: getfield 222	com/yelp/android/ca/a:d	Landroid/database/sqlite/SQLiteStatement;
    //   70: invokevirtual 244	android/database/sqlite/SQLiteStatement:clearBindings	()V
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
  
  public void a(BusinessSearchRequest paramBusinessSearchRequest, String paramString)
  {
    a(paramBusinessSearchRequest.r(), paramString);
  }
  
  /* Error */
  public void a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 273	com/yelp/android/ca/a:a	()J
    //   4: ldc2_w 274
    //   7: lcmp
    //   8: iflt +10 -> 18
    //   11: aload_0
    //   12: invokespecial 277	com/yelp/android/ca/a:e	()V
    //   15: goto -15 -> 0
    //   18: new 101	android/content/ContentValues
    //   21: dup
    //   22: invokespecial 278	android/content/ContentValues:<init>	()V
    //   25: astore 4
    //   27: aload 4
    //   29: ldc 49
    //   31: aload_1
    //   32: invokevirtual 281	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   35: aload 4
    //   37: ldc 57
    //   39: aload_2
    //   40: invokevirtual 281	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: aconst_null
    //   44: astore_1
    //   45: aconst_null
    //   46: astore_3
    //   47: aload_0
    //   48: getfield 75	com/yelp/android/ca/a:b	Landroid/os/AsyncTask;
    //   51: invokevirtual 158	android/os/AsyncTask:get	()Ljava/lang/Object;
    //   54: checkcast 107	android/database/sqlite/SQLiteDatabase
    //   57: astore_2
    //   58: aload_2
    //   59: invokevirtual 168	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   62: aload_0
    //   63: aload_2
    //   64: aload 4
    //   66: invokespecial 283	com/yelp/android/ca/a:a	(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    //   69: aload_2
    //   70: invokevirtual 180	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   73: aload_2
    //   74: invokestatic 182	com/yelp/android/ca/a:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   77: return
    //   78: astore_1
    //   79: aload_3
    //   80: astore_2
    //   81: aload_1
    //   82: astore_3
    //   83: aload_2
    //   84: astore_1
    //   85: ldc -72
    //   87: new 80	java/lang/StringBuilder
    //   90: dup
    //   91: invokespecial 193	java/lang/StringBuilder:<init>	()V
    //   94: ldc_w 285
    //   97: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: aload_3
    //   101: invokevirtual 196	java/lang/Exception:toString	()Ljava/lang/String;
    //   104: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: iconst_1
    //   111: anewarray 4	java/lang/Object
    //   114: dup
    //   115: iconst_0
    //   116: aload_3
    //   117: aastore
    //   118: invokestatic 201	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   121: aload_2
    //   122: invokestatic 182	com/yelp/android/ca/a:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   125: return
    //   126: astore_3
    //   127: aload_1
    //   128: astore_2
    //   129: aload_3
    //   130: astore_1
    //   131: aload_2
    //   132: invokestatic 182	com/yelp/android/ca/a:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   135: aload_1
    //   136: athrow
    //   137: astore_1
    //   138: goto -7 -> 131
    //   141: astore_3
    //   142: goto -59 -> 83
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	145	0	this	a
    //   0	145	1	paramString1	String
    //   0	145	2	paramString2	String
    //   46	71	3	str	String
    //   126	4	3	localObject	Object
    //   141	1	3	localException	Exception
    //   25	40	4	localContentValues	ContentValues
    // Exception table:
    //   from	to	target	type
    //   47	58	78	java/lang/Exception
    //   47	58	126	finally
    //   85	121	126	finally
    //   58	73	137	finally
    //   58	73	141	java/lang/Exception
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
    //   5: getfield 75	com/yelp/android/ca/a:b	Landroid/os/AsyncTask;
    //   8: invokevirtual 158	android/os/AsyncTask:get	()Ljava/lang/Object;
    //   11: checkcast 107	android/database/sqlite/SQLiteDatabase
    //   14: astore_2
    //   15: aload_2
    //   16: invokevirtual 168	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   19: ldc -72
    //   21: ldc_w 287
    //   24: iconst_1
    //   25: anewarray 4	java/lang/Object
    //   28: dup
    //   29: iconst_0
    //   30: aload_2
    //   31: ldc 21
    //   33: ldc_w 289
    //   36: aconst_null
    //   37: invokevirtual 177	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   40: invokestatic 292	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   43: aastore
    //   44: invokestatic 201	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   47: aload_2
    //   48: invokevirtual 180	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   51: aload_2
    //   52: invokestatic 182	com/yelp/android/ca/a:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   55: return
    //   56: astore_1
    //   57: aload_3
    //   58: astore_2
    //   59: aload_1
    //   60: astore_3
    //   61: aload_2
    //   62: astore_1
    //   63: ldc -72
    //   65: new 80	java/lang/StringBuilder
    //   68: dup
    //   69: invokespecial 193	java/lang/StringBuilder:<init>	()V
    //   72: ldc_w 294
    //   75: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: aload_3
    //   79: invokevirtual 196	java/lang/Exception:toString	()Ljava/lang/String;
    //   82: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   88: iconst_1
    //   89: anewarray 4	java/lang/Object
    //   92: dup
    //   93: iconst_0
    //   94: aload_3
    //   95: aastore
    //   96: invokestatic 201	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   99: aload_2
    //   100: invokestatic 182	com/yelp/android/ca/a:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   103: return
    //   104: astore_3
    //   105: aload_1
    //   106: astore_2
    //   107: aload_3
    //   108: astore_1
    //   109: aload_2
    //   110: invokestatic 182	com/yelp/android/ca/a:b	(Landroid/database/sqlite/SQLiteDatabase;)V
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
 * Qualified Name:     com.yelp.android.ca.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */