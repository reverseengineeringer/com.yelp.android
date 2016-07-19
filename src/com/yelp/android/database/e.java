package com.yelp.android.database;

import android.content.Context;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.serializable.Category;
import com.yelp.android.services.g;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.q;
import com.yelp.common.collect.MapMaker;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;

public class e
{
  static final String[] a = { "id", "title", "alias", "child_count" };
  private static final String c = String.format("CREATE INDEX IF NOT EXISTS index_on_category_hierarchy_child_id on %s (%s)", new Object[] { "category_hierarchy", "category_child_id" });
  a b;
  private final Map<Integer, Category> d = new MapMaker().concurrencyLevel(1).softValues().makeMap();
  private final Map<String, Category> e = new MapMaker().concurrencyLevel(1).softValues().makeMap();
  private final Map<String, Category> f = new MapMaker().concurrencyLevel(1).softValues().makeMap();
  private LinkedHashSet<String> g;
  
  public e(Context paramContext, String paramString, Collection<String> paramCollection)
    throws IOException
  {
    a(paramContext, paramString, paramCollection);
  }
  
  private static final void c(Cursor paramCursor)
  {
    if ((paramCursor != null) && (!paramCursor.isClosed())) {
      paramCursor.close();
    }
  }
  
  final Category a(Cursor paramCursor)
  {
    Category localCategory = new Category(paramCursor.getString(1), paramCursor.getString(2), paramCursor.getInt(0));
    localCategory.a(paramCursor.getInt(3));
    d.put(Integer.valueOf(localCategory.e()), localCategory);
    e.put(localCategory.d(), localCategory);
    return localCategory;
  }
  
  public Category a(String paramString)
  {
    Category localCategory2 = (Category)e.get(paramString);
    Category localCategory1 = localCategory2;
    if (localCategory2 == null)
    {
      localCategory1 = localCategory2;
      if (!TextUtils.isEmpty(paramString))
      {
        localCategory2 = a("alias=?", new String[] { paramString });
        localCategory1 = localCategory2;
        if (localCategory2 != null)
        {
          e.put(paramString, localCategory2);
          localCategory1 = localCategory2;
        }
      }
    }
    return localCategory1;
  }
  
  /* Error */
  final Category a(String paramString, String... paramVarArgs)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 151	com/yelp/android/database/e:b	Lcom/yelp/android/database/e$a;
    //   4: invokevirtual 154	com/yelp/android/database/e$a:get	()Ljava/lang/Object;
    //   7: checkcast 156	android/database/sqlite/SQLiteDatabase
    //   10: ldc -98
    //   12: getstatic 37	com/yelp/android/database/e:a	[Ljava/lang/String;
    //   15: aload_1
    //   16: aload_2
    //   17: aconst_null
    //   18: aconst_null
    //   19: aconst_null
    //   20: invokevirtual 162	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   23: astore_1
    //   24: aload_1
    //   25: astore_2
    //   26: aload_1
    //   27: invokeinterface 165 1 0
    //   32: ifeq +78 -> 110
    //   35: aload_1
    //   36: astore_2
    //   37: aload_0
    //   38: aload_1
    //   39: invokevirtual 167	com/yelp/android/database/e:a	(Landroid/database/Cursor;)Lcom/yelp/android/serializable/Category;
    //   42: astore_3
    //   43: aload_3
    //   44: astore_2
    //   45: aload_1
    //   46: invokestatic 85	com/yelp/android/database/e:c	(Landroid/database/Cursor;)V
    //   49: aload_2
    //   50: areturn
    //   51: astore_3
    //   52: aconst_null
    //   53: astore_1
    //   54: aload_1
    //   55: astore_2
    //   56: aload_0
    //   57: ldc -87
    //   59: aload_3
    //   60: invokestatic 174	com/yelp/android/util/YelpLog:e	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   63: pop
    //   64: aload_1
    //   65: invokestatic 85	com/yelp/android/database/e:c	(Landroid/database/Cursor;)V
    //   68: aconst_null
    //   69: areturn
    //   70: astore_3
    //   71: aconst_null
    //   72: astore_1
    //   73: aload_1
    //   74: astore_2
    //   75: aload_0
    //   76: ldc -80
    //   78: aload_3
    //   79: invokestatic 174	com/yelp/android/util/YelpLog:e	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   82: pop
    //   83: aload_1
    //   84: invokestatic 85	com/yelp/android/database/e:c	(Landroid/database/Cursor;)V
    //   87: aconst_null
    //   88: areturn
    //   89: astore_1
    //   90: aconst_null
    //   91: astore_2
    //   92: aload_2
    //   93: invokestatic 85	com/yelp/android/database/e:c	(Landroid/database/Cursor;)V
    //   96: aload_1
    //   97: athrow
    //   98: astore_1
    //   99: goto -7 -> 92
    //   102: astore_3
    //   103: goto -30 -> 73
    //   106: astore_3
    //   107: goto -53 -> 54
    //   110: aconst_null
    //   111: astore_2
    //   112: goto -67 -> 45
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	115	0	this	e
    //   0	115	1	paramString	String
    //   0	115	2	paramVarArgs	String[]
    //   42	2	3	localCategory	Category
    //   51	9	3	localInterruptedException1	InterruptedException
    //   70	9	3	localExecutionException1	ExecutionException
    //   102	1	3	localExecutionException2	ExecutionException
    //   106	1	3	localInterruptedException2	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   0	24	51	java/lang/InterruptedException
    //   0	24	70	java/util/concurrent/ExecutionException
    //   0	24	89	finally
    //   26	35	98	finally
    //   37	43	98	finally
    //   56	64	98	finally
    //   75	83	98	finally
    //   26	35	102	java/util/concurrent/ExecutionException
    //   37	43	102	java/util/concurrent/ExecutionException
    //   26	35	106	java/lang/InterruptedException
    //   37	43	106	java/lang/InterruptedException
  }
  
  public ArrayList<Category> a(int paramInt)
  {
    Object localObject4 = null;
    localObject1 = null;
    localObject2 = null;
    SystemClock.elapsedRealtime();
    Object localObject5;
    Object localObject6;
    if (paramInt < 0)
    {
      localObject5 = "category_hierarchy.category_id IS NULL";
      localObject6 = null;
    }
    for (;;)
    {
      localArrayList = new ArrayList();
      try
      {
        localObject5 = ((SQLiteDatabase)b.get()).query("categories JOIN category_hierarchy ON (categories.id=category_hierarchy.category_child_id)", a, (String)localObject5, (String[])localObject6, null, null, "categories.\"order\", categories.title");
        localObject2 = localObject5;
        localObject4 = localObject5;
        localObject1 = localObject5;
        if (((Cursor)localObject5).moveToFirst()) {
          do
          {
            localObject2 = localObject5;
            localObject4 = localObject5;
            localObject1 = localObject5;
            Category localCategory = (Category)d.get(Integer.valueOf(((Cursor)localObject5).getInt(0)));
            localObject6 = localCategory;
            if (localCategory == null)
            {
              localObject2 = localObject5;
              localObject4 = localObject5;
              localObject1 = localObject5;
              localObject6 = a((Cursor)localObject5);
            }
            localObject2 = localObject5;
            localObject4 = localObject5;
            localObject1 = localObject5;
            localArrayList.add(localObject6);
            localObject2 = localObject5;
            localObject4 = localObject5;
            localObject1 = localObject5;
          } while (((Cursor)localObject5).moveToNext());
        }
        localObject2 = localObject5;
        localObject4 = localObject5;
        localObject1 = localObject5;
        ((Cursor)localObject5).close();
        return localArrayList;
      }
      catch (ExecutionException localExecutionException)
      {
        localObject1 = localObject2;
        YelpLog.e(this, "Something bad happened while trying to get our database", localExecutionException);
        return localArrayList;
      }
      catch (InterruptedException localInterruptedException)
      {
        localObject1 = localExecutionException;
        YelpLog.e(this, "No time to load the entire list", localInterruptedException);
        c(localExecutionException);
        return localArrayList;
      }
      finally
      {
        c((Cursor)localObject1);
      }
      localObject5 = "category_hierarchy.category_id=?";
      localObject6 = new String[1];
      localObject6[0] = Integer.toString(paramInt);
    }
  }
  
  /* Error */
  public Collection<Category> a(Category paramCategory)
  {
    // Byte code:
    //   0: invokestatic 216	java/util/Collections:emptySet	()Ljava/util/Set;
    //   3: astore 4
    //   5: aload_1
    //   6: invokevirtual 115	com/yelp/android/serializable/Category:e	()I
    //   9: istore_2
    //   10: aload_0
    //   11: getfield 151	com/yelp/android/database/e:b	Lcom/yelp/android/database/e$a;
    //   14: invokevirtual 154	com/yelp/android/database/e$a:get	()Ljava/lang/Object;
    //   17: checkcast 156	android/database/sqlite/SQLiteDatabase
    //   20: ldc 41
    //   22: iconst_1
    //   23: anewarray 27	java/lang/String
    //   26: dup
    //   27: iconst_0
    //   28: ldc -38
    //   30: aastore
    //   31: ldc -36
    //   33: iconst_1
    //   34: anewarray 27	java/lang/String
    //   37: dup
    //   38: iconst_0
    //   39: iload_2
    //   40: invokestatic 222	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   43: aastore
    //   44: aconst_null
    //   45: aconst_null
    //   46: aconst_null
    //   47: invokevirtual 162	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   50: astore_1
    //   51: aload_1
    //   52: astore 5
    //   54: new 224	java/util/HashSet
    //   57: dup
    //   58: invokespecial 225	java/util/HashSet:<init>	()V
    //   61: astore 6
    //   63: aload_1
    //   64: astore 5
    //   66: aload_1
    //   67: invokeinterface 165 1 0
    //   72: ifeq +63 -> 135
    //   75: aload_1
    //   76: astore 5
    //   78: aload_1
    //   79: ldc -38
    //   81: invokeinterface 229 2 0
    //   86: istore_2
    //   87: aload_1
    //   88: astore 5
    //   90: aload_0
    //   91: aload_1
    //   92: iload_2
    //   93: invokeinterface 106 2 0
    //   98: invokevirtual 232	com/yelp/android/database/e:b	(I)Lcom/yelp/android/serializable/Category;
    //   101: astore 4
    //   103: aload 4
    //   105: ifnull +16 -> 121
    //   108: aload_1
    //   109: astore 5
    //   111: aload 6
    //   113: aload 4
    //   115: invokeinterface 235 2 0
    //   120: pop
    //   121: aload_1
    //   122: astore 5
    //   124: aload_1
    //   125: invokeinterface 199 1 0
    //   130: istore_3
    //   131: iload_3
    //   132: ifne -45 -> 87
    //   135: aload_1
    //   136: invokestatic 85	com/yelp/android/database/e:c	(Landroid/database/Cursor;)V
    //   139: aload 6
    //   141: areturn
    //   142: astore 6
    //   144: aconst_null
    //   145: astore_1
    //   146: aload_1
    //   147: astore 5
    //   149: aload_0
    //   150: ldc -19
    //   152: aload 6
    //   154: invokestatic 174	com/yelp/android/util/YelpLog:e	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   157: pop
    //   158: aload_1
    //   159: invokestatic 85	com/yelp/android/database/e:c	(Landroid/database/Cursor;)V
    //   162: aload 4
    //   164: areturn
    //   165: astore 6
    //   167: aconst_null
    //   168: astore_1
    //   169: aload_1
    //   170: astore 5
    //   172: aload_0
    //   173: ldc -17
    //   175: aload 6
    //   177: invokestatic 174	com/yelp/android/util/YelpLog:e	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   180: pop
    //   181: aload_1
    //   182: invokestatic 85	com/yelp/android/database/e:c	(Landroid/database/Cursor;)V
    //   185: aload 4
    //   187: areturn
    //   188: astore_1
    //   189: aconst_null
    //   190: astore 5
    //   192: aload 5
    //   194: invokestatic 85	com/yelp/android/database/e:c	(Landroid/database/Cursor;)V
    //   197: aload_1
    //   198: athrow
    //   199: astore_1
    //   200: goto -8 -> 192
    //   203: astore 6
    //   205: goto -36 -> 169
    //   208: astore 5
    //   210: aload 6
    //   212: astore 4
    //   214: aload 5
    //   216: astore 6
    //   218: goto -49 -> 169
    //   221: astore 6
    //   223: goto -77 -> 146
    //   226: astore 5
    //   228: aload 6
    //   230: astore 4
    //   232: aload 5
    //   234: astore 6
    //   236: goto -90 -> 146
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	239	0	this	e
    //   0	239	1	paramCategory	Category
    //   9	84	2	i	int
    //   130	2	3	bool	boolean
    //   3	228	4	localObject	Object
    //   52	141	5	localCategory	Category
    //   208	7	5	localExecutionException1	ExecutionException
    //   226	7	5	localInterruptedException1	InterruptedException
    //   61	79	6	localHashSet	java.util.HashSet
    //   142	11	6	localInterruptedException2	InterruptedException
    //   165	11	6	localExecutionException2	ExecutionException
    //   203	8	6	localExecutionException3	ExecutionException
    //   216	1	6	localExecutionException4	ExecutionException
    //   221	8	6	localInterruptedException3	InterruptedException
    //   234	1	6	localInterruptedException4	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   10	51	142	java/lang/InterruptedException
    //   10	51	165	java/util/concurrent/ExecutionException
    //   10	51	188	finally
    //   54	63	199	finally
    //   66	75	199	finally
    //   78	87	199	finally
    //   90	103	199	finally
    //   111	121	199	finally
    //   124	131	199	finally
    //   149	158	199	finally
    //   172	181	199	finally
    //   54	63	203	java/util/concurrent/ExecutionException
    //   66	75	208	java/util/concurrent/ExecutionException
    //   78	87	208	java/util/concurrent/ExecutionException
    //   90	103	208	java/util/concurrent/ExecutionException
    //   111	121	208	java/util/concurrent/ExecutionException
    //   124	131	208	java/util/concurrent/ExecutionException
    //   54	63	221	java/lang/InterruptedException
    //   66	75	226	java/lang/InterruptedException
    //   78	87	226	java/lang/InterruptedException
    //   90	103	226	java/lang/InterruptedException
    //   111	121	226	java/lang/InterruptedException
    //   124	131	226	java/lang/InterruptedException
  }
  
  public void a()
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = (SQLiteDatabase)b.get();
      if (localSQLiteDatabase.isOpen()) {
        localSQLiteDatabase.close();
      }
      return;
    }
    catch (ExecutionException localExecutionException) {}catch (InterruptedException localInterruptedException) {}
  }
  
  public void a(Context paramContext, String paramString, Collection<String> paramCollection)
    throws IOException
  {
    if (b != null) {}
    try
    {
      if (((SQLiteDatabase)b.get()).isOpen()) {
        ((SQLiteDatabase)b.get()).close();
      }
      if (g == null) {
        g = new LinkedHashSet(400);
      }
      for (;;)
      {
        d.clear();
        e.clear();
        b = new a(g, paramCollection);
        b.b(new Pair[] { Pair.create(paramContext, paramString) });
        return;
        g.clear();
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
    catch (ExecutionException localExecutionException)
    {
      for (;;) {}
    }
  }
  
  b b()
  {
    try
    {
      b.get();
      return b.a;
    }
    catch (ExecutionException localExecutionException)
    {
      for (;;) {}
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  public Category b(int paramInt)
  {
    Category localCategory2 = (Category)d.get(Integer.valueOf(paramInt));
    Category localCategory1 = localCategory2;
    if (localCategory2 == null) {
      localCategory1 = a("id=?", new String[] { String.valueOf(paramInt) });
    }
    return localCategory1;
  }
  
  public Category b(String paramString)
  {
    Category localCategory2 = (Category)f.get(paramString);
    Category localCategory1 = localCategory2;
    if (localCategory2 == null)
    {
      localCategory1 = localCategory2;
      if (!TextUtils.isEmpty(paramString))
      {
        localCategory2 = a("title=?", new String[] { paramString });
        localCategory1 = localCategory2;
        if (localCategory2 != null)
        {
          f.put(paramString, localCategory2);
          localCategory1 = localCategory2;
        }
      }
    }
    return localCategory1;
  }
  
  public String c()
  {
    return b.a(b());
  }
  
  static final class a
    extends q<Pair<Context, String>, String, SQLiteDatabase>
  {
    e.b a;
    private final Set<String> b;
    private final Collection<String> d;
    
    public a(Set<String> paramSet, Collection<String> paramCollection)
    {
      b = paramSet;
      d = paramCollection;
    }
    
    protected SQLiteDatabase a(Pair<Context, String>... paramVarArgs)
    {
      SystemClock.elapsedRealtime();
      Object localObject1 = paramVarArgs[0];
      paramVarArgs = (String)second;
      Object localObject4 = (Context)first;
      localObject1 = new e.b((Context)localObject4, paramVarArgs, d);
      try
      {
        ((e.b)localObject1).a((Context)localObject4);
        localObject4 = ((e.b)localObject1).a();
        ((SQLiteDatabase)localObject4).execSQL(e.d());
        boolean bool;
        e.b(paramVarArgs);
      }
      catch (IOException paramVarArgs)
      {
        for (;;)
        {
          try
          {
            paramVarArgs = ((SQLiteDatabase)localObject4).query("categories", new String[] { "title" }, null, null, null, null, "title");
          }
          finally {}
          try
          {
            if (paramVarArgs.moveToFirst())
            {
              publishProgress(new String[] { paramVarArgs.getString(0) });
              bool = paramVarArgs.moveToNext();
              if (bool) {
                continue;
              }
            }
            e.b(paramVarArgs);
            a = ((e.b)localObject1);
            return (SQLiteDatabase)localObject4;
          }
          finally
          {
            for (;;) {}
          }
        }
        paramVarArgs = paramVarArgs;
        throw new IllegalStateException("Unable to load database", paramVarArgs);
      }
      throw ((Throwable)localObject2);
    }
    
    protected void a(String... paramVarArgs)
    {
      super.onProgressUpdate(paramVarArgs);
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        String str = paramVarArgs[i];
        b.add(str);
        i += 1;
      }
    }
  }
  
  static class b
  {
    private final String a;
    private final Collection<String> b;
    private final String c;
    private final File d;
    
    public b(Context paramContext, String paramString, Collection<String> paramCollection)
    {
      a = paramString;
      d = paramContext.getFileStreamPath(a(a, 3));
      c = ("database_category/" + a + ".sqlite");
      b = paramCollection;
    }
    
    private boolean b(Context paramContext)
    {
      try
      {
        g localg = new g();
        paramContext = paramContext.getAssets().open(c);
        long l1 = localg.a(paramContext);
        paramContext.close();
        paramContext = new FileInputStream(d);
        long l2 = localg.a(paramContext);
        paramContext.close();
        return l2 != l1;
      }
      catch (IOException paramContext)
      {
        return true;
      }
      catch (FileNotFoundException paramContext) {}
      return true;
    }
    
    private void c(Context paramContext)
      throws IOException
    {
      Object localObject1 = paramContext.getAssets().open(c, 0);
      Object localObject2 = paramContext.openFileOutput(a(a, 3), 0);
      Object localObject3 = new byte['Ѐ'];
      int i;
      for (;;)
      {
        i = ((InputStream)localObject1).read((byte[])localObject3);
        if (i <= 0) {
          break;
        }
        ((FileOutputStream)localObject2).write((byte[])localObject3, 0, i);
      }
      ((FileOutputStream)localObject2).flush();
      ((FileOutputStream)localObject2).getFD().sync();
      ((FileOutputStream)localObject2).close();
      ((InputStream)localObject1).close();
      localObject1 = b.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (String)((Iterator)localObject1).next();
        i = 0;
        while (i <= 3)
        {
          if ((i != 3) || (!TextUtils.equals((CharSequence)localObject2, a)))
          {
            localObject3 = paramContext.getFileStreamPath(a((String)localObject2, i));
            if (((File)localObject3).exists()) {
              ((File)localObject3).delete();
            }
          }
          i += 1;
        }
      }
    }
    
    public SQLiteDatabase a()
      throws SQLException
    {
      return SQLiteDatabase.openDatabase(d.getAbsolutePath(), null, 16);
    }
    
    String a(String paramString, int paramInt)
    {
      if (paramInt == 0) {
        return paramString + ".sqlite";
      }
      return paramString + "-" + paramInt + ".sqlite";
    }
    
    public void a(Context paramContext)
      throws IOException
    {
      if ((!d.exists()) || (b(paramContext))) {
        c(paramContext);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */