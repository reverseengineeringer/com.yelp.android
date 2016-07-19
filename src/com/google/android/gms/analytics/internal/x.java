package com.google.android.gms.analytics.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import com.google.android.gms.internal.jz;
import java.io.Closeable;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class x
  extends r
  implements Closeable
{
  private static final String a = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", new Object[] { "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id" });
  private static final String b = String.format("SELECT MAX(%s) FROM %s WHERE 1;", new Object[] { "hit_time", "hits2" });
  private final a c;
  private final k d = new k(n());
  private final k e = new k(n());
  
  x(t paramt)
  {
    super(paramt);
    String str = I();
    c = new a(paramt.b(), str);
  }
  
  private void H()
  {
    int i = q().y();
    long l = g();
    if (l > i - 1)
    {
      List localList = a(l - i + 1L);
      d("Store full, deleting hits to make room, count", Integer.valueOf(localList.size()));
      a(localList);
    }
  }
  
  private String I()
  {
    if (!q().a()) {
      return q().A();
    }
    if (q().b()) {
      return q().A();
    }
    return q().B();
  }
  
  private long a(String paramString, String[] paramArrayOfString)
  {
    SQLiteDatabase localSQLiteDatabase = F();
    Object localObject = null;
    String[] arrayOfString = null;
    try
    {
      paramArrayOfString = localSQLiteDatabase.rawQuery(paramString, paramArrayOfString);
      arrayOfString = paramArrayOfString;
      localObject = paramArrayOfString;
      if (paramArrayOfString.moveToFirst())
      {
        arrayOfString = paramArrayOfString;
        localObject = paramArrayOfString;
        long l = paramArrayOfString.getLong(0);
        if (paramArrayOfString != null) {
          paramArrayOfString.close();
        }
        return l;
      }
      arrayOfString = paramArrayOfString;
      localObject = paramArrayOfString;
      throw new SQLiteException("Database returned empty set");
    }
    catch (SQLiteException paramArrayOfString)
    {
      localObject = arrayOfString;
      d("Database error", paramString, paramArrayOfString);
      localObject = arrayOfString;
      throw paramArrayOfString;
    }
    finally
    {
      if (localObject != null) {
        ((Cursor)localObject).close();
      }
    }
  }
  
  private long a(String paramString, String[] paramArrayOfString, long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = F();
    Object localObject = null;
    String[] arrayOfString = null;
    try
    {
      paramArrayOfString = localSQLiteDatabase.rawQuery(paramString, paramArrayOfString);
      arrayOfString = paramArrayOfString;
      localObject = paramArrayOfString;
      long l;
      if (paramArrayOfString.moveToFirst())
      {
        arrayOfString = paramArrayOfString;
        localObject = paramArrayOfString;
        paramLong = paramArrayOfString.getLong(0);
        l = paramLong;
        if (paramArrayOfString != null)
        {
          paramArrayOfString.close();
          l = paramLong;
        }
      }
      do
      {
        return l;
        l = paramLong;
      } while (paramArrayOfString == null);
      paramArrayOfString.close();
      return paramLong;
    }
    catch (SQLiteException paramArrayOfString)
    {
      localObject = arrayOfString;
      d("Database error", paramString, paramArrayOfString);
      localObject = arrayOfString;
      throw paramArrayOfString;
    }
    finally
    {
      if (localObject != null) {
        ((Cursor)localObject).close();
      }
    }
  }
  
  private static String a(Map<String, String> paramMap)
  {
    zzx.zzz(paramMap);
    Object localObject = new Uri.Builder();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      ((Uri.Builder)localObject).appendQueryParameter((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    localObject = ((Uri.Builder)localObject).build().getEncodedQuery();
    paramMap = (Map<String, String>)localObject;
    if (localObject == null) {
      paramMap = "";
    }
    return paramMap;
  }
  
  private String b(c paramc)
  {
    if (paramc.f()) {
      return q().o();
    }
    return q().p();
  }
  
  private static String c(c paramc)
  {
    zzx.zzz(paramc);
    Object localObject = new Uri.Builder();
    paramc = paramc.b().entrySet().iterator();
    while (paramc.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramc.next();
      String str = (String)localEntry.getKey();
      if ((!"ht".equals(str)) && (!"qt".equals(str)) && (!"AppUID".equals(str))) {
        ((Uri.Builder)localObject).appendQueryParameter(str, (String)localEntry.getValue());
      }
    }
    localObject = ((Uri.Builder)localObject).build().getEncodedQuery();
    paramc = (c)localObject;
    if (localObject == null) {
      paramc = "";
    }
    return paramc;
  }
  
  SQLiteDatabase F()
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = c.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
      d("Error opening database", localSQLiteException);
      throw localSQLiteException;
    }
  }
  
  public long a(long paramLong, String paramString1, String paramString2)
  {
    zzx.zzcM(paramString1);
    zzx.zzcM(paramString2);
    D();
    m();
    return a("SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?", new String[] { String.valueOf(paramLong), paramString1, paramString2 }, 0L);
  }
  
  /* Error */
  public List<Long> a(long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: invokevirtual 263	com/google/android/gms/analytics/internal/x:m	()V
    //   7: aload_0
    //   8: invokevirtual 260	com/google/android/gms/analytics/internal/x:D	()V
    //   11: lload_1
    //   12: lconst_0
    //   13: lcmp
    //   14: ifgt +7 -> 21
    //   17: invokestatic 276	java/util/Collections:emptyList	()Ljava/util/List;
    //   20: areturn
    //   21: aload_0
    //   22: invokevirtual 134	com/google/android/gms/analytics/internal/x:F	()Landroid/database/sqlite/SQLiteDatabase;
    //   25: astore 4
    //   27: new 278	java/util/ArrayList
    //   30: dup
    //   31: invokespecial 279	java/util/ArrayList:<init>	()V
    //   34: astore 7
    //   36: ldc_w 281
    //   39: iconst_1
    //   40: anewarray 22	java/lang/Object
    //   43: dup
    //   44: iconst_0
    //   45: ldc 26
    //   47: aastore
    //   48: invokestatic 40	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   51: astore 6
    //   53: lload_1
    //   54: invokestatic 286	java/lang/Long:toString	(J)Ljava/lang/String;
    //   57: astore 8
    //   59: aload 4
    //   61: ldc 24
    //   63: iconst_1
    //   64: anewarray 36	java/lang/String
    //   67: dup
    //   68: iconst_0
    //   69: ldc 26
    //   71: aastore
    //   72: aconst_null
    //   73: aconst_null
    //   74: aconst_null
    //   75: aconst_null
    //   76: aload 6
    //   78: aload 8
    //   80: invokevirtual 290	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   83: astore 4
    //   85: aload 4
    //   87: astore 5
    //   89: aload 5
    //   91: astore 4
    //   93: aload 5
    //   95: invokeinterface 145 1 0
    //   100: ifeq +42 -> 142
    //   103: aload 5
    //   105: astore 4
    //   107: aload 7
    //   109: aload 5
    //   111: iconst_0
    //   112: invokeinterface 149 2 0
    //   117: invokestatic 293	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   120: invokeinterface 296 2 0
    //   125: pop
    //   126: aload 5
    //   128: astore 4
    //   130: aload 5
    //   132: invokeinterface 299 1 0
    //   137: istore_3
    //   138: iload_3
    //   139: ifne -36 -> 103
    //   142: aload 5
    //   144: ifnull +10 -> 154
    //   147: aload 5
    //   149: invokeinterface 152 1 0
    //   154: aload 7
    //   156: areturn
    //   157: astore 6
    //   159: aconst_null
    //   160: astore 5
    //   162: aload 5
    //   164: astore 4
    //   166: aload_0
    //   167: ldc_w 301
    //   170: aload 6
    //   172: invokevirtual 113	com/google/android/gms/analytics/internal/x:d	(Ljava/lang/String;Ljava/lang/Object;)V
    //   175: aload 5
    //   177: ifnull -23 -> 154
    //   180: aload 5
    //   182: invokeinterface 152 1 0
    //   187: goto -33 -> 154
    //   190: astore 4
    //   192: aload 5
    //   194: ifnull +10 -> 204
    //   197: aload 5
    //   199: invokeinterface 152 1 0
    //   204: aload 4
    //   206: athrow
    //   207: astore 6
    //   209: aload 4
    //   211: astore 5
    //   213: aload 6
    //   215: astore 4
    //   217: goto -25 -> 192
    //   220: astore 6
    //   222: goto -60 -> 162
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	225	0	this	x
    //   0	225	1	paramLong	long
    //   137	2	3	bool	boolean
    //   25	140	4	localObject1	Object
    //   190	20	4	localObject2	Object
    //   215	1	4	localObject3	Object
    //   1	211	5	localObject4	Object
    //   51	26	6	str1	String
    //   157	14	6	localSQLiteException1	SQLiteException
    //   207	7	6	localObject5	Object
    //   220	1	6	localSQLiteException2	SQLiteException
    //   34	121	7	localArrayList	ArrayList
    //   57	22	8	str2	String
    // Exception table:
    //   from	to	target	type
    //   36	85	157	android/database/sqlite/SQLiteException
    //   36	85	190	finally
    //   93	103	207	finally
    //   107	126	207	finally
    //   130	138	207	finally
    //   166	175	207	finally
    //   93	103	220	android/database/sqlite/SQLiteException
    //   107	126	220	android/database/sqlite/SQLiteException
    //   130	138	220	android/database/sqlite/SQLiteException
  }
  
  Map<String, String> a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return new HashMap(0);
    }
    try
    {
      if (paramString.startsWith("?")) {}
      for (;;)
      {
        return jz.a(new URI(paramString), "UTF-8");
        paramString = "?" + paramString;
      }
      return new HashMap(0);
    }
    catch (URISyntaxException paramString)
    {
      e("Error parsing hit parameters", paramString);
    }
  }
  
  protected void a() {}
  
  public void a(long paramLong, String paramString)
  {
    zzx.zzcM(paramString);
    D();
    m();
    int i = F().delete("properties", "app_uid=? AND cid<>?", new String[] { String.valueOf(paramLong), paramString });
    if (i > 0) {
      a("Deleted property records", Integer.valueOf(i));
    }
  }
  
  public void a(c paramc)
  {
    zzx.zzz(paramc);
    m();
    D();
    String str = c(paramc);
    if (str.length() > 8192)
    {
      p().a(paramc, "Hit length exceeds the maximum allowed size");
      return;
    }
    H();
    SQLiteDatabase localSQLiteDatabase = F();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("hit_string", str);
    localContentValues.put("hit_time", Long.valueOf(paramc.d()));
    localContentValues.put("hit_app_id", Integer.valueOf(paramc.a()));
    localContentValues.put("hit_url", b(paramc));
    long l;
    try
    {
      l = localSQLiteDatabase.insert("hits2", null, localContentValues);
      if (l == -1L)
      {
        f("Failed to insert a hit (got -1)");
        return;
      }
    }
    catch (SQLiteException paramc)
    {
      e("Error storing a hit", paramc);
      return;
    }
    b("Hit saved to database. db-id, hit", Long.valueOf(l), paramc);
  }
  
  public void a(v paramv)
  {
    zzx.zzz(paramv);
    D();
    m();
    SQLiteDatabase localSQLiteDatabase = F();
    String str = a(paramv.f());
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("app_uid", Long.valueOf(paramv.a()));
    localContentValues.put("cid", paramv.b());
    localContentValues.put("tid", paramv.c());
    if (paramv.d()) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put("adid", Integer.valueOf(i));
      localContentValues.put("hits_count", Long.valueOf(paramv.e()));
      localContentValues.put("params", str);
      try
      {
        if (localSQLiteDatabase.insertWithOnConflict("properties", null, localContentValues, 5) == -1L) {
          f("Failed to insert/update a property (got -1)");
        }
        return;
      }
      catch (SQLiteException paramv)
      {
        e("Error storing a property", paramv);
      }
    }
  }
  
  public void a(List<Long> paramList)
  {
    zzx.zzz(paramList);
    m();
    D();
    if (paramList.isEmpty()) {}
    for (;;)
    {
      return;
      Object localObject1 = new StringBuilder("hit_id");
      ((StringBuilder)localObject1).append(" in (");
      int i = 0;
      Object localObject2;
      while (i < paramList.size())
      {
        localObject2 = (Long)paramList.get(i);
        if ((localObject2 == null) || (((Long)localObject2).longValue() == 0L)) {
          throw new SQLiteException("Invalid hit id");
        }
        if (i > 0) {
          ((StringBuilder)localObject1).append(",");
        }
        ((StringBuilder)localObject1).append(localObject2);
        i += 1;
      }
      ((StringBuilder)localObject1).append(")");
      localObject1 = ((StringBuilder)localObject1).toString();
      try
      {
        localObject2 = F();
        a("Deleting dispatched hits. count", Integer.valueOf(paramList.size()));
        i = ((SQLiteDatabase)localObject2).delete("hits2", (String)localObject1, null);
        if (i == paramList.size()) {
          continue;
        }
        b("Deleted fewer hits then expected", Integer.valueOf(paramList.size()), Integer.valueOf(i), localObject1);
        return;
      }
      catch (SQLiteException paramList)
      {
        e("Error deleting hits", paramList);
        throw paramList;
      }
    }
  }
  
  public List<c> b(long paramLong)
  {
    boolean bool = true;
    Cursor localCursor = null;
    if (paramLong >= 0L) {}
    for (;;)
    {
      zzx.zzac(bool);
      m();
      D();
      Object localObject5 = F();
      localObject1 = localCursor;
      for (;;)
      {
        try
        {
          str1 = String.format("%s ASC", new Object[] { "hit_id" });
          localObject1 = localCursor;
          str2 = Long.toString(paramLong);
          localObject1 = localCursor;
          localCursor = ((SQLiteDatabase)localObject5).query("hits2", new String[] { "hit_id", "hit_time", "hit_string", "hit_url", "hit_app_id" }, null, null, null, null, str1, str2);
          localObject1 = localCursor;
        }
        catch (SQLiteException localSQLiteException1)
        {
          String str1;
          String str2;
          localObject1 = null;
          try
          {
            e("Error loading hits from the database", localSQLiteException1);
            throw localSQLiteException1;
          }
          finally
          {
            if (localObject1 != null) {
              ((Cursor)localObject1).close();
            }
          }
        }
        finally
        {
          continue;
        }
        try
        {
          localObject5 = new ArrayList();
          localObject1 = localCursor;
          if (localCursor.moveToFirst())
          {
            localObject1 = localCursor;
            paramLong = localCursor.getLong(0);
            localObject1 = localCursor;
            long l = localCursor.getLong(1);
            localObject1 = localCursor;
            str1 = localCursor.getString(2);
            localObject1 = localCursor;
            str2 = localCursor.getString(3);
            localObject1 = localCursor;
            int i = localCursor.getInt(4);
            localObject1 = localCursor;
            ((List)localObject5).add(new c(this, a(str1), l, n.f(str2), paramLong, i));
            localObject1 = localCursor;
            bool = localCursor.moveToNext();
            if (bool) {
              continue;
            }
          }
          if (localCursor != null) {
            localCursor.close();
          }
          return (List<c>)localObject5;
        }
        catch (SQLiteException localSQLiteException2)
        {
          localObject1 = localObject3;
          Object localObject4 = localSQLiteException2;
        }
      }
      bool = false;
    }
  }
  
  public void b()
  {
    D();
    F().beginTransaction();
  }
  
  public void c()
  {
    D();
    F().setTransactionSuccessful();
  }
  
  public void c(long paramLong)
  {
    m();
    D();
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(Long.valueOf(paramLong));
    a("Deleting hit, id", Long.valueOf(paramLong));
    a(localArrayList);
  }
  
  public void close()
  {
    try
    {
      c.close();
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      e("Sql error closing database", localSQLiteException);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      e("Error closing database", localIllegalStateException);
    }
  }
  
  /* Error */
  public List<v> d(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 260	com/google/android/gms/analytics/internal/x:D	()V
    //   4: aload_0
    //   5: invokevirtual 263	com/google/android/gms/analytics/internal/x:m	()V
    //   8: aload_0
    //   9: invokevirtual 134	com/google/android/gms/analytics/internal/x:F	()Landroid/database/sqlite/SQLiteDatabase;
    //   12: astore 9
    //   14: aconst_null
    //   15: astore 8
    //   17: aload 8
    //   19: astore 7
    //   21: aload_0
    //   22: invokevirtual 84	com/google/android/gms/analytics/internal/x:q	()Lcom/google/android/gms/analytics/internal/ad;
    //   25: invokevirtual 524	com/google/android/gms/analytics/internal/ad:z	()I
    //   28: istore_3
    //   29: aload 8
    //   31: astore 7
    //   33: aload 9
    //   35: ldc_w 349
    //   38: iconst_5
    //   39: anewarray 36	java/lang/String
    //   42: dup
    //   43: iconst_0
    //   44: ldc_w 425
    //   47: aastore
    //   48: dup
    //   49: iconst_1
    //   50: ldc_w 429
    //   53: aastore
    //   54: dup
    //   55: iconst_2
    //   56: ldc_w 435
    //   59: aastore
    //   60: dup
    //   61: iconst_3
    //   62: ldc_w 437
    //   65: aastore
    //   66: dup
    //   67: iconst_4
    //   68: ldc_w 441
    //   71: aastore
    //   72: ldc_w 526
    //   75: iconst_1
    //   76: anewarray 36	java/lang/String
    //   79: dup
    //   80: iconst_0
    //   81: lload_1
    //   82: invokestatic 268	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   85: aastore
    //   86: aconst_null
    //   87: aconst_null
    //   88: aconst_null
    //   89: iload_3
    //   90: invokestatic 528	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   93: invokevirtual 290	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   96: astore 8
    //   98: aload 8
    //   100: astore 7
    //   102: new 278	java/util/ArrayList
    //   105: dup
    //   106: invokespecial 279	java/util/ArrayList:<init>	()V
    //   109: astore 9
    //   111: aload 8
    //   113: astore 7
    //   115: aload 8
    //   117: invokeinterface 145 1 0
    //   122: ifeq +135 -> 257
    //   125: aload 8
    //   127: astore 7
    //   129: aload 8
    //   131: iconst_0
    //   132: invokeinterface 488 2 0
    //   137: astore 10
    //   139: aload 8
    //   141: astore 7
    //   143: aload 8
    //   145: iconst_1
    //   146: invokeinterface 488 2 0
    //   151: astore 11
    //   153: aload 8
    //   155: astore 7
    //   157: aload 8
    //   159: iconst_2
    //   160: invokeinterface 492 2 0
    //   165: ifeq +133 -> 298
    //   168: iconst_1
    //   169: istore 6
    //   171: aload 8
    //   173: astore 7
    //   175: aload 8
    //   177: iconst_3
    //   178: invokeinterface 492 2 0
    //   183: i2l
    //   184: lstore 4
    //   186: aload 8
    //   188: astore 7
    //   190: aload_0
    //   191: aload 8
    //   193: iconst_4
    //   194: invokeinterface 488 2 0
    //   199: invokevirtual 530	com/google/android/gms/analytics/internal/x:g	(Ljava/lang/String;)Ljava/util/Map;
    //   202: astore 12
    //   204: aload 8
    //   206: astore 7
    //   208: aload 10
    //   210: invokestatic 311	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   213: ifne +15 -> 228
    //   216: aload 8
    //   218: astore 7
    //   220: aload 11
    //   222: invokestatic 311	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   225: ifeq +79 -> 304
    //   228: aload 8
    //   230: astore 7
    //   232: aload_0
    //   233: ldc_w 532
    //   236: aload 10
    //   238: aload 11
    //   240: invokevirtual 534	com/google/android/gms/analytics/internal/x:c	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   243: aload 8
    //   245: astore 7
    //   247: aload 8
    //   249: invokeinterface 299 1 0
    //   254: ifne -129 -> 125
    //   257: aload 8
    //   259: astore 7
    //   261: aload 9
    //   263: invokeinterface 104 1 0
    //   268: iload_3
    //   269: if_icmplt +14 -> 283
    //   272: aload 8
    //   274: astore 7
    //   276: aload_0
    //   277: ldc_w 536
    //   280: invokevirtual 538	com/google/android/gms/analytics/internal/x:e	(Ljava/lang/String;)V
    //   283: aload 8
    //   285: ifnull +10 -> 295
    //   288: aload 8
    //   290: invokeinterface 152 1 0
    //   295: aload 9
    //   297: areturn
    //   298: iconst_0
    //   299: istore 6
    //   301: goto -130 -> 171
    //   304: aload 8
    //   306: astore 7
    //   308: aload 9
    //   310: new 415	com/google/android/gms/analytics/internal/v
    //   313: dup
    //   314: lload_1
    //   315: aload 10
    //   317: aload 11
    //   319: iload 6
    //   321: lload 4
    //   323: aload 12
    //   325: invokespecial 541	com/google/android/gms/analytics/internal/v:<init>	(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V
    //   328: invokeinterface 296 2 0
    //   333: pop
    //   334: goto -91 -> 243
    //   337: astore 9
    //   339: aload 8
    //   341: astore 7
    //   343: aload 9
    //   345: astore 8
    //   347: aload_0
    //   348: ldc_w 503
    //   351: aload 8
    //   353: invokevirtual 345	com/google/android/gms/analytics/internal/x:e	(Ljava/lang/String;Ljava/lang/Object;)V
    //   356: aload 8
    //   358: athrow
    //   359: astore 8
    //   361: aload 7
    //   363: ifnull +10 -> 373
    //   366: aload 7
    //   368: invokeinterface 152 1 0
    //   373: aload 8
    //   375: athrow
    //   376: astore 8
    //   378: goto -17 -> 361
    //   381: astore 8
    //   383: aconst_null
    //   384: astore 7
    //   386: goto -39 -> 347
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	389	0	this	x
    //   0	389	1	paramLong	long
    //   28	242	3	i	int
    //   184	138	4	l	long
    //   169	151	6	bool	boolean
    //   19	366	7	localObject1	Object
    //   15	342	8	localObject2	Object
    //   359	15	8	localObject3	Object
    //   376	1	8	localObject4	Object
    //   381	1	8	localSQLiteException1	SQLiteException
    //   12	297	9	localObject5	Object
    //   337	7	9	localSQLiteException2	SQLiteException
    //   137	179	10	str1	String
    //   151	167	11	str2	String
    //   202	122	12	localMap	Map
    // Exception table:
    //   from	to	target	type
    //   102	111	337	android/database/sqlite/SQLiteException
    //   115	125	337	android/database/sqlite/SQLiteException
    //   129	139	337	android/database/sqlite/SQLiteException
    //   143	153	337	android/database/sqlite/SQLiteException
    //   157	168	337	android/database/sqlite/SQLiteException
    //   175	186	337	android/database/sqlite/SQLiteException
    //   190	204	337	android/database/sqlite/SQLiteException
    //   208	216	337	android/database/sqlite/SQLiteException
    //   220	228	337	android/database/sqlite/SQLiteException
    //   232	243	337	android/database/sqlite/SQLiteException
    //   247	257	337	android/database/sqlite/SQLiteException
    //   261	272	337	android/database/sqlite/SQLiteException
    //   276	283	337	android/database/sqlite/SQLiteException
    //   308	334	337	android/database/sqlite/SQLiteException
    //   347	359	359	finally
    //   21	29	376	finally
    //   33	98	376	finally
    //   102	111	376	finally
    //   115	125	376	finally
    //   129	139	376	finally
    //   143	153	376	finally
    //   157	168	376	finally
    //   175	186	376	finally
    //   190	204	376	finally
    //   208	216	376	finally
    //   220	228	376	finally
    //   232	243	376	finally
    //   247	257	376	finally
    //   261	272	376	finally
    //   276	283	376	finally
    //   308	334	376	finally
    //   21	29	381	android/database/sqlite/SQLiteException
    //   33	98	381	android/database/sqlite/SQLiteException
  }
  
  public void d()
  {
    D();
    F().endTransaction();
  }
  
  public void e()
  {
    m();
    D();
    F().delete("hits2", null, null);
  }
  
  public void f()
  {
    m();
    D();
    F().delete("properties", null, null);
  }
  
  public long g()
  {
    m();
    D();
    return a("SELECT COUNT(*) FROM hits2", null);
  }
  
  Map<String, String> g(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return new HashMap(0);
    }
    try
    {
      paramString = jz.a(new URI("?" + paramString), "UTF-8");
      return paramString;
    }
    catch (URISyntaxException paramString)
    {
      e("Error parsing property parameters", paramString);
    }
    return new HashMap(0);
  }
  
  boolean h()
  {
    return g() == 0L;
  }
  
  public int i()
  {
    m();
    D();
    if (!d.a(86400000L)) {
      return 0;
    }
    d.a();
    b("Deleting stale hits (if any)");
    int i = F().delete("hits2", "hit_time < ?", new String[] { Long.toString(n().a() - 2592000000L) });
    a("Deleted stale hits, count", Integer.valueOf(i));
    return i;
  }
  
  public long j()
  {
    m();
    D();
    return a(b, null, 0L);
  }
  
  class a
    extends SQLiteOpenHelper
  {
    a(Context paramContext, String paramString)
    {
      super(paramString, null, 1);
    }
    
    private void a(SQLiteDatabase paramSQLiteDatabase)
    {
      int j = 1;
      Set localSet = b(paramSQLiteDatabase, "hits2");
      String[] arrayOfString = new String[4];
      arrayOfString[0] = "hit_id";
      arrayOfString[1] = "hit_string";
      arrayOfString[2] = "hit_time";
      arrayOfString[3] = "hit_url";
      int k = arrayOfString.length;
      int i = 0;
      while (i < k)
      {
        String str = arrayOfString[i];
        if (!localSet.remove(str)) {
          throw new SQLiteException("Database hits2 is missing required column: " + str);
        }
        i += 1;
      }
      if (!localSet.remove("hit_app_id")) {}
      for (i = j; !localSet.isEmpty(); i = 0) {
        throw new SQLiteException("Database hits2 has extra columns");
      }
      if (i != 0) {
        paramSQLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id INTEGER");
      }
    }
    
    /* Error */
    private boolean a(SQLiteDatabase paramSQLiteDatabase, String paramString)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore 4
      //   3: aload_1
      //   4: ldc 77
      //   6: iconst_1
      //   7: anewarray 25	java/lang/String
      //   10: dup
      //   11: iconst_0
      //   12: ldc 79
      //   14: aastore
      //   15: ldc 81
      //   17: iconst_1
      //   18: anewarray 25	java/lang/String
      //   21: dup
      //   22: iconst_0
      //   23: aload_2
      //   24: aastore
      //   25: aconst_null
      //   26: aconst_null
      //   27: aconst_null
      //   28: invokevirtual 85	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
      //   31: astore_1
      //   32: aload_1
      //   33: astore 4
      //   35: aload 4
      //   37: astore_1
      //   38: aload 4
      //   40: invokeinterface 90 1 0
      //   45: istore_3
      //   46: aload 4
      //   48: ifnull +10 -> 58
      //   51: aload 4
      //   53: invokeinterface 93 1 0
      //   58: iload_3
      //   59: ireturn
      //   60: astore 5
      //   62: aconst_null
      //   63: astore 4
      //   65: aload 4
      //   67: astore_1
      //   68: aload_0
      //   69: getfield 12	com/google/android/gms/analytics/internal/x$a:a	Lcom/google/android/gms/analytics/internal/x;
      //   72: ldc 95
      //   74: aload_2
      //   75: aload 5
      //   77: invokevirtual 99	com/google/android/gms/analytics/internal/x:c	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
      //   80: aload 4
      //   82: ifnull +10 -> 92
      //   85: aload 4
      //   87: invokeinterface 93 1 0
      //   92: iconst_0
      //   93: ireturn
      //   94: astore_1
      //   95: aload 4
      //   97: astore_2
      //   98: aload_2
      //   99: ifnull +9 -> 108
      //   102: aload_2
      //   103: invokeinterface 93 1 0
      //   108: aload_1
      //   109: athrow
      //   110: astore 4
      //   112: aload_1
      //   113: astore_2
      //   114: aload 4
      //   116: astore_1
      //   117: goto -19 -> 98
      //   120: astore 5
      //   122: goto -57 -> 65
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	125	0	this	a
      //   0	125	1	paramSQLiteDatabase	SQLiteDatabase
      //   0	125	2	paramString	String
      //   45	14	3	bool	boolean
      //   1	95	4	localSQLiteDatabase	SQLiteDatabase
      //   110	5	4	localObject	Object
      //   60	16	5	localSQLiteException1	SQLiteException
      //   120	1	5	localSQLiteException2	SQLiteException
      // Exception table:
      //   from	to	target	type
      //   3	32	60	android/database/sqlite/SQLiteException
      //   3	32	94	finally
      //   38	46	110	finally
      //   68	80	110	finally
      //   38	46	120	android/database/sqlite/SQLiteException
    }
    
    private Set<String> b(SQLiteDatabase paramSQLiteDatabase, String paramString)
    {
      HashSet localHashSet = new HashSet();
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT * FROM " + paramString + " LIMIT 0", null);
      try
      {
        paramString = paramSQLiteDatabase.getColumnNames();
        int i = 0;
        while (i < paramString.length)
        {
          localHashSet.add(paramString[i]);
          i += 1;
        }
        return localHashSet;
      }
      finally
      {
        paramSQLiteDatabase.close();
      }
    }
    
    private void b(SQLiteDatabase paramSQLiteDatabase)
    {
      int i = 0;
      paramSQLiteDatabase = b(paramSQLiteDatabase, "properties");
      String[] arrayOfString = new String[6];
      arrayOfString[0] = "app_uid";
      arrayOfString[1] = "cid";
      arrayOfString[2] = "tid";
      arrayOfString[3] = "params";
      arrayOfString[4] = "adid";
      arrayOfString[5] = "hits_count";
      int j = arrayOfString.length;
      while (i < j)
      {
        String str = arrayOfString[i];
        if (!paramSQLiteDatabase.remove(str)) {
          throw new SQLiteException("Database properties is missing required column: " + str);
        }
        i += 1;
      }
      if (!paramSQLiteDatabase.isEmpty()) {
        throw new SQLiteException("Database properties table has extra columns");
      }
    }
    
    public SQLiteDatabase getWritableDatabase()
    {
      if (!x.a(x.this).a(3600000L)) {
        throw new SQLiteException("Database open failed");
      }
      try
      {
        SQLiteDatabase localSQLiteDatabase = super.getWritableDatabase();
        return localSQLiteDatabase;
      }
      catch (SQLiteException localSQLiteException1)
      {
        x.a(x.this).a();
        f("Opening the database failed, dropping the table and recreating it");
        Object localObject = x.b(x.this);
        o().getDatabasePath((String)localObject).delete();
        try
        {
          localObject = super.getWritableDatabase();
          x.a(x.this).b();
          return (SQLiteDatabase)localObject;
        }
        catch (SQLiteException localSQLiteException2)
        {
          e("Failed to open freshly created database", localSQLiteException2);
          throw localSQLiteException2;
        }
      }
    }
    
    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      aj.a(paramSQLiteDatabase.getPath());
    }
    
    public void onOpen(SQLiteDatabase paramSQLiteDatabase)
    {
      Cursor localCursor;
      if (Build.VERSION.SDK_INT < 15) {
        localCursor = paramSQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
      }
      for (;;)
      {
        try
        {
          localCursor.moveToFirst();
          localCursor.close();
          if (!a(paramSQLiteDatabase, "hits2"))
          {
            paramSQLiteDatabase.execSQL(x.G());
            if (a(paramSQLiteDatabase, "properties")) {
              break;
            }
            paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS properties ( app_uid INTEGER NOT NULL, cid TEXT NOT NULL, tid TEXT NOT NULL, params TEXT NOT NULL, adid INTEGER NOT NULL, hits_count INTEGER NOT NULL, PRIMARY KEY (app_uid, cid, tid)) ;");
            return;
          }
        }
        finally
        {
          localCursor.close();
        }
        a(paramSQLiteDatabase);
      }
      b(paramSQLiteDatabase);
    }
    
    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */