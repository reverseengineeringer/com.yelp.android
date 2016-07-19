package com.yelp.android.database;

import android.app.backup.BackupManager;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;

public abstract class c
  implements g.c
{
  private final AsyncTask<?, ?, SQLiteDatabase> a;
  private final String b;
  private final String c;
  private ArrayList<CharSequence> d = new ArrayList();
  
  public c(String paramString1, String paramString2, AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    b = paramString1;
    c = paramString2;
    a = paramAsyncTask;
  }
  
  public static i a(m paramm, String paramString)
  {
    return new c.1(paramm);
  }
  
  public static final n a(String paramString)
  {
    return new n(paramString).a(new f("_id", ColumnType.INTEGER, ColumnModifier.PRIMARY_KEY_AUTOINCREMENT));
  }
  
  private static void b(SQLiteDatabase paramSQLiteDatabase)
  {
    if ((paramSQLiteDatabase != null) && (paramSQLiteDatabase.inTransaction())) {
      paramSQLiteDatabase.endTransaction();
    }
  }
  
  /* Error */
  private void b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: getfield 31	com/yelp/android/database/c:a	Landroid/os/AsyncTask;
    //   9: invokevirtual 86	android/os/AsyncTask:get	()Ljava/lang/Object;
    //   12: checkcast 71	android/database/sqlite/SQLiteDatabase
    //   15: astore_3
    //   16: aload_3
    //   17: invokevirtual 89	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   20: aload_0
    //   21: getfield 25	com/yelp/android/database/c:d	Ljava/util/ArrayList;
    //   24: iconst_0
    //   25: aload_1
    //   26: invokevirtual 93	java/util/ArrayList:add	(ILjava/lang/Object;)V
    //   29: aload_3
    //   30: aload_0
    //   31: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   34: aconst_null
    //   35: aload_0
    //   36: aload_1
    //   37: invokespecial 97	com/yelp/android/database/c:e	(Ljava/lang/String;)Landroid/content/ContentValues;
    //   40: invokevirtual 101	android/database/sqlite/SQLiteDatabase:insertOrThrow	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   43: ldc2_w 102
    //   46: lcmp
    //   47: ifne +25 -> 72
    //   50: aload_0
    //   51: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   54: ldc 105
    //   56: iconst_1
    //   57: anewarray 4	java/lang/Object
    //   60: dup
    //   61: iconst_0
    //   62: aload_1
    //   63: aastore
    //   64: invokestatic 110	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   67: aload_3
    //   68: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   71: return
    //   72: aload_0
    //   73: getfield 25	com/yelp/android/database/c:d	Ljava/util/ArrayList;
    //   76: invokevirtual 116	java/util/ArrayList:size	()I
    //   79: bipush 75
    //   81: if_icmple +109 -> 190
    //   84: aload_0
    //   85: getfield 25	com/yelp/android/database/c:d	Ljava/util/ArrayList;
    //   88: iconst_0
    //   89: invokevirtual 120	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   92: checkcast 122	java/lang/CharSequence
    //   95: astore_1
    //   96: aload_3
    //   97: aload_0
    //   98: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   101: new 124	java/lang/StringBuilder
    //   104: dup
    //   105: invokespecial 125	java/lang/StringBuilder:<init>	()V
    //   108: aload_0
    //   109: getfield 29	com/yelp/android/database/c:c	Ljava/lang/String;
    //   112: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: ldc -125
    //   117: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: iconst_1
    //   124: anewarray 137	java/lang/String
    //   127: dup
    //   128: iconst_0
    //   129: aload_1
    //   130: invokestatic 141	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   133: aastore
    //   134: invokevirtual 145	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   137: pop
    //   138: goto -66 -> 72
    //   141: astore_2
    //   142: aload_3
    //   143: astore_1
    //   144: aload_2
    //   145: astore_3
    //   146: aload_1
    //   147: astore_2
    //   148: aload_0
    //   149: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   152: new 124	java/lang/StringBuilder
    //   155: dup
    //   156: invokespecial 125	java/lang/StringBuilder:<init>	()V
    //   159: ldc -109
    //   161: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: aload_3
    //   165: invokevirtual 148	java/lang/Exception:toString	()Ljava/lang/String;
    //   168: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   174: iconst_1
    //   175: anewarray 4	java/lang/Object
    //   178: dup
    //   179: iconst_0
    //   180: aload_3
    //   181: aastore
    //   182: invokestatic 110	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   185: aload_1
    //   186: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   189: return
    //   190: aload_3
    //   191: invokevirtual 151	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   194: aload_3
    //   195: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   198: return
    //   199: astore_1
    //   200: aload_2
    //   201: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   204: aload_1
    //   205: athrow
    //   206: astore_1
    //   207: aload_3
    //   208: astore_2
    //   209: goto -9 -> 200
    //   212: astore_3
    //   213: aload 4
    //   215: astore_1
    //   216: goto -70 -> 146
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	219	0	this	c
    //   0	219	1	paramString	String
    //   1	1	2	localObject1	Object
    //   141	4	2	localException1	Exception
    //   147	62	2	localObject2	Object
    //   15	193	3	localObject3	Object
    //   212	1	3	localException2	Exception
    //   3	211	4	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   16	67	141	java/lang/Exception
    //   72	138	141	java/lang/Exception
    //   190	194	141	java/lang/Exception
    //   5	16	199	finally
    //   148	185	199	finally
    //   16	67	206	finally
    //   72	138	206	finally
    //   190	194	206	finally
    //   5	16	212	java/lang/Exception
  }
  
  /* Error */
  private void c(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: getfield 25	com/yelp/android/database/c:d	Ljava/util/ArrayList;
    //   9: iconst_0
    //   10: aload_1
    //   11: invokevirtual 93	java/util/ArrayList:add	(ILjava/lang/Object;)V
    //   14: aload_0
    //   15: getfield 31	com/yelp/android/database/c:a	Landroid/os/AsyncTask;
    //   18: invokevirtual 86	android/os/AsyncTask:get	()Ljava/lang/Object;
    //   21: checkcast 71	android/database/sqlite/SQLiteDatabase
    //   24: astore_3
    //   25: aload_3
    //   26: invokevirtual 89	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   29: aload_3
    //   30: aload_0
    //   31: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   34: aconst_null
    //   35: aload_0
    //   36: aload_1
    //   37: invokespecial 97	com/yelp/android/database/c:e	(Ljava/lang/String;)Landroid/content/ContentValues;
    //   40: invokevirtual 101	android/database/sqlite/SQLiteDatabase:insertOrThrow	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   43: ldc2_w 102
    //   46: lcmp
    //   47: ifne +25 -> 72
    //   50: aload_0
    //   51: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   54: ldc -103
    //   56: iconst_1
    //   57: anewarray 4	java/lang/Object
    //   60: dup
    //   61: iconst_0
    //   62: aload_1
    //   63: aastore
    //   64: invokestatic 110	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   67: aload_3
    //   68: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   71: return
    //   72: aload_3
    //   73: invokevirtual 151	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   76: aload_3
    //   77: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   80: return
    //   81: astore_3
    //   82: aload 4
    //   84: astore_1
    //   85: aload_1
    //   86: astore_2
    //   87: aload_0
    //   88: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   91: new 124	java/lang/StringBuilder
    //   94: dup
    //   95: invokespecial 125	java/lang/StringBuilder:<init>	()V
    //   98: ldc -101
    //   100: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: aload_3
    //   104: invokevirtual 148	java/lang/Exception:toString	()Ljava/lang/String;
    //   107: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: iconst_1
    //   114: anewarray 4	java/lang/Object
    //   117: dup
    //   118: iconst_0
    //   119: aload_3
    //   120: aastore
    //   121: invokestatic 110	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   124: aload_1
    //   125: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   128: return
    //   129: astore_1
    //   130: aload_2
    //   131: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   134: aload_1
    //   135: athrow
    //   136: astore_1
    //   137: aload_3
    //   138: astore_2
    //   139: goto -9 -> 130
    //   142: astore_2
    //   143: aload_3
    //   144: astore_1
    //   145: aload_2
    //   146: astore_3
    //   147: goto -62 -> 85
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	150	0	this	c
    //   0	150	1	paramString	String
    //   1	138	2	localObject1	Object
    //   142	4	2	localException1	Exception
    //   24	53	3	localSQLiteDatabase	SQLiteDatabase
    //   81	63	3	localException2	Exception
    //   146	1	3	localException3	Exception
    //   3	80	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   14	25	81	java/lang/Exception
    //   14	25	129	finally
    //   87	124	129	finally
    //   25	67	136	finally
    //   72	76	136	finally
    //   25	67	142	java/lang/Exception
    //   72	76	142	java/lang/Exception
  }
  
  /* Error */
  private void d(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 5
    //   5: aload_0
    //   6: getfield 25	com/yelp/android/database/c:d	Ljava/util/ArrayList;
    //   9: iconst_0
    //   10: aload_1
    //   11: invokevirtual 93	java/util/ArrayList:add	(ILjava/lang/Object;)V
    //   14: aload_0
    //   15: getfield 31	com/yelp/android/database/c:a	Landroid/os/AsyncTask;
    //   18: invokevirtual 86	android/os/AsyncTask:get	()Ljava/lang/Object;
    //   21: checkcast 71	android/database/sqlite/SQLiteDatabase
    //   24: astore 4
    //   26: aload 4
    //   28: invokevirtual 89	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   31: aload 4
    //   33: aload_0
    //   34: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   37: new 124	java/lang/StringBuilder
    //   40: dup
    //   41: invokespecial 125	java/lang/StringBuilder:<init>	()V
    //   44: aload_0
    //   45: getfield 29	com/yelp/android/database/c:c	Ljava/lang/String;
    //   48: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: ldc -125
    //   53: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: iconst_1
    //   60: anewarray 137	java/lang/String
    //   63: dup
    //   64: iconst_0
    //   65: aload_1
    //   66: aastore
    //   67: invokevirtual 145	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   70: istore_2
    //   71: iload_2
    //   72: iconst_1
    //   73: if_icmpeq +29 -> 102
    //   76: aload_0
    //   77: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   80: ldc -99
    //   82: iconst_1
    //   83: anewarray 4	java/lang/Object
    //   86: dup
    //   87: iconst_0
    //   88: iload_2
    //   89: invokestatic 162	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   92: aastore
    //   93: invokestatic 110	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   96: aload 4
    //   98: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   101: return
    //   102: aload 4
    //   104: aload_0
    //   105: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   108: aconst_null
    //   109: aload_0
    //   110: aload_1
    //   111: invokespecial 97	com/yelp/android/database/c:e	(Ljava/lang/String;)Landroid/content/ContentValues;
    //   114: invokevirtual 101	android/database/sqlite/SQLiteDatabase:insertOrThrow	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   117: ldc2_w 102
    //   120: lcmp
    //   121: ifne +26 -> 147
    //   124: aload_0
    //   125: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   128: ldc -92
    //   130: iconst_1
    //   131: anewarray 4	java/lang/Object
    //   134: dup
    //   135: iconst_0
    //   136: aload_1
    //   137: aastore
    //   138: invokestatic 110	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   141: aload 4
    //   143: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   146: return
    //   147: aload 4
    //   149: invokevirtual 151	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   152: aload 4
    //   154: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   157: return
    //   158: astore 4
    //   160: aload 5
    //   162: astore_1
    //   163: aload_1
    //   164: astore_3
    //   165: aload_0
    //   166: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   169: ldc -90
    //   171: iconst_1
    //   172: anewarray 4	java/lang/Object
    //   175: dup
    //   176: iconst_0
    //   177: aload 4
    //   179: aastore
    //   180: invokestatic 110	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   183: aload_1
    //   184: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   187: return
    //   188: astore_1
    //   189: aload_3
    //   190: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   193: aload_1
    //   194: athrow
    //   195: astore_1
    //   196: aload 4
    //   198: astore_3
    //   199: goto -10 -> 189
    //   202: astore_3
    //   203: aload 4
    //   205: astore_1
    //   206: aload_3
    //   207: astore 4
    //   209: goto -46 -> 163
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	212	0	this	c
    //   0	212	1	paramString	String
    //   70	19	2	i	int
    //   1	198	3	localObject1	Object
    //   202	5	3	localException1	Exception
    //   24	129	4	localSQLiteDatabase	SQLiteDatabase
    //   158	46	4	localException2	Exception
    //   207	1	4	localException3	Exception
    //   3	158	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   14	26	158	java/lang/Exception
    //   14	26	188	finally
    //   165	183	188	finally
    //   26	71	195	finally
    //   76	96	195	finally
    //   102	141	195	finally
    //   147	152	195	finally
    //   26	71	202	java/lang/Exception
    //   76	96	202	java/lang/Exception
    //   102	141	202	java/lang/Exception
    //   147	152	202	java/lang/Exception
  }
  
  private final ContentValues e(String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(c, paramString);
    return localContentValues;
  }
  
  public void a(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    if (d.remove(paramString)) {
      d(paramString);
    }
    for (;;)
    {
      new BackupManager(paramContext).dataChanged();
      return;
      if (d.size() < 75) {
        c(paramString);
      } else {
        b(paramString);
      }
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    paramSQLiteDatabase = paramSQLiteDatabase.query(b, new String[] { "_id", c }, null, null, null, null, null);
    if ((paramSQLiteDatabase != null) && (paramSQLiteDatabase.moveToFirst()))
    {
      localLinkedHashSet.add(paramSQLiteDatabase.getString(1));
      while (paramSQLiteDatabase.moveToNext()) {
        localLinkedHashSet.add(paramSQLiteDatabase.getString(1));
      }
    }
    d = new ArrayList(localLinkedHashSet);
    Collections.reverse(d);
    if (paramSQLiteDatabase != null) {
      paramSQLiteDatabase.close();
    }
  }
  
  public ArrayList<CharSequence> b()
  {
    return d;
  }
  
  /* Error */
  public void c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: getfield 25	com/yelp/android/database/c:d	Ljava/util/ArrayList;
    //   9: invokevirtual 235	java/util/ArrayList:clear	()V
    //   12: aload_0
    //   13: getfield 31	com/yelp/android/database/c:a	Landroid/os/AsyncTask;
    //   16: invokevirtual 86	android/os/AsyncTask:get	()Ljava/lang/Object;
    //   19: checkcast 71	android/database/sqlite/SQLiteDatabase
    //   22: astore_3
    //   23: aload_3
    //   24: invokevirtual 89	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   27: aload_3
    //   28: aload_0
    //   29: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   32: ldc -19
    //   34: aconst_null
    //   35: invokevirtual 145	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   38: istore_1
    //   39: aload_0
    //   40: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   43: ldc -17
    //   45: iconst_1
    //   46: anewarray 4	java/lang/Object
    //   49: dup
    //   50: iconst_0
    //   51: iload_1
    //   52: invokestatic 162	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   55: aastore
    //   56: invokestatic 110	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   59: aload_3
    //   60: invokevirtual 151	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   63: aload_3
    //   64: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   67: return
    //   68: astore_2
    //   69: aload 4
    //   71: astore_3
    //   72: aload_2
    //   73: astore 4
    //   75: aload_3
    //   76: astore_2
    //   77: aload_0
    //   78: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   81: new 124	java/lang/StringBuilder
    //   84: dup
    //   85: invokespecial 125	java/lang/StringBuilder:<init>	()V
    //   88: ldc -15
    //   90: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: aload 4
    //   95: invokevirtual 148	java/lang/Exception:toString	()Ljava/lang/String;
    //   98: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   104: iconst_1
    //   105: anewarray 4	java/lang/Object
    //   108: dup
    //   109: iconst_0
    //   110: aload 4
    //   112: aastore
    //   113: invokestatic 110	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   116: aload_3
    //   117: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   120: return
    //   121: astore 4
    //   123: aload_2
    //   124: astore_3
    //   125: aload 4
    //   127: astore_2
    //   128: aload_3
    //   129: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   132: aload_2
    //   133: athrow
    //   134: astore_2
    //   135: goto -7 -> 128
    //   138: astore 4
    //   140: goto -65 -> 75
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	143	0	this	c
    //   38	14	1	i	int
    //   1	1	2	localObject1	Object
    //   68	5	2	localException1	Exception
    //   76	57	2	localObject2	Object
    //   134	1	2	localObject3	Object
    //   22	107	3	localObject4	Object
    //   3	108	4	localException2	Exception
    //   121	5	4	localObject5	Object
    //   138	1	4	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   12	23	68	java/lang/Exception
    //   12	23	121	finally
    //   77	116	121	finally
    //   23	63	134	finally
    //   23	63	138	java/lang/Exception
  }
  
  /* Error */
  public void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 25	com/yelp/android/database/c:d	Ljava/util/ArrayList;
    //   4: invokevirtual 243	java/util/ArrayList:isEmpty	()Z
    //   7: ifeq +4 -> 11
    //   10: return
    //   11: aload_0
    //   12: getfield 25	com/yelp/android/database/c:d	Ljava/util/ArrayList;
    //   15: aload_0
    //   16: getfield 25	com/yelp/android/database/c:d	Ljava/util/ArrayList;
    //   19: invokevirtual 116	java/util/ArrayList:size	()I
    //   22: iconst_1
    //   23: isub
    //   24: invokevirtual 120	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   27: invokestatic 141	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   30: astore 4
    //   32: aconst_null
    //   33: astore_1
    //   34: aconst_null
    //   35: astore_3
    //   36: aload_0
    //   37: getfield 31	com/yelp/android/database/c:a	Landroid/os/AsyncTask;
    //   40: invokevirtual 86	android/os/AsyncTask:get	()Ljava/lang/Object;
    //   43: checkcast 71	android/database/sqlite/SQLiteDatabase
    //   46: astore_2
    //   47: aload_2
    //   48: invokevirtual 89	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   51: aload_2
    //   52: aload_0
    //   53: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   56: new 124	java/lang/StringBuilder
    //   59: dup
    //   60: invokespecial 125	java/lang/StringBuilder:<init>	()V
    //   63: aload_0
    //   64: getfield 29	com/yelp/android/database/c:c	Ljava/lang/String;
    //   67: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: ldc -11
    //   72: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: iconst_1
    //   79: anewarray 137	java/lang/String
    //   82: dup
    //   83: iconst_0
    //   84: aload 4
    //   86: aastore
    //   87: invokevirtual 145	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   90: pop
    //   91: aload_2
    //   92: invokevirtual 151	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   95: aload_2
    //   96: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   99: return
    //   100: astore_1
    //   101: aload_3
    //   102: astore_2
    //   103: aload_1
    //   104: astore_3
    //   105: aload_2
    //   106: astore_1
    //   107: aload_0
    //   108: getfield 27	com/yelp/android/database/c:b	Ljava/lang/String;
    //   111: ldc -9
    //   113: iconst_1
    //   114: anewarray 4	java/lang/Object
    //   117: dup
    //   118: iconst_0
    //   119: aload_3
    //   120: aastore
    //   121: invokestatic 110	com/yelp/android/appdata/BaseYelpApplication:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   124: aload_2
    //   125: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   128: return
    //   129: astore_3
    //   130: aload_1
    //   131: astore_2
    //   132: aload_3
    //   133: astore_1
    //   134: aload_2
    //   135: invokestatic 112	com/yelp/android/database/c:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   138: aload_1
    //   139: athrow
    //   140: astore_1
    //   141: goto -7 -> 134
    //   144: astore_3
    //   145: goto -40 -> 105
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	148	0	this	c
    //   33	1	1	localObject1	Object
    //   100	4	1	localException1	Exception
    //   106	33	1	localObject2	Object
    //   140	1	1	localObject3	Object
    //   46	89	2	localObject4	Object
    //   35	85	3	localException2	Exception
    //   129	4	3	localObject5	Object
    //   144	1	3	localException3	Exception
    //   30	55	4	str	String
    // Exception table:
    //   from	to	target	type
    //   36	47	100	java/lang/Exception
    //   36	47	129	finally
    //   107	124	129	finally
    //   47	95	140	finally
    //   47	95	144	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */