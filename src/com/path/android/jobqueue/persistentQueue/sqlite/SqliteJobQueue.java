package com.path.android.jobqueue.persistentQueue.sqlite;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteStatement;
import com.path.android.jobqueue.Job;
import com.path.android.jobqueue.c;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SqliteJobQueue
  implements c
{
  a a;
  SQLiteDatabase b;
  SqlHelper c;
  b d;
  b e;
  b f;
  b g;
  Set<Long> h = new HashSet();
  private final long i;
  
  public SqliteJobQueue(Context paramContext, long paramLong, String paramString, b paramb, boolean paramBoolean)
  {
    i = paramLong;
    if (paramBoolean) {}
    for (paramString = null;; paramString = "db_" + paramString)
    {
      a = new a(paramContext, paramString);
      b = a.getWritableDatabase();
      c = new SqlHelper(b, "job_holder", aa, 9, "job_holder_tags", 3, paramLong);
      d = paramb;
      e = new b();
      f = new b();
      g = new b();
      c.a(Long.MIN_VALUE);
      return;
    }
  }
  
  private Job a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = d.a(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      com.yelp.android.bp.b.a(paramArrayOfByte, "error while deserializing job", new Object[0]);
    }
    return null;
  }
  
  private com.path.android.jobqueue.a a(Cursor paramCursor)
    throws SqliteJobQueue.InvalidJobException
  {
    Job localJob = a(paramCursor.getBlob(ec));
    if (localJob == null) {
      throw new InvalidJobException(null);
    }
    return new com.path.android.jobqueue.a(Long.valueOf(paramCursor.getLong(ac)), paramCursor.getInt(bc), paramCursor.getString(cc), paramCursor.getInt(dc), localJob, paramCursor.getLong(fc), paramCursor.getLong(gc), paramCursor.getLong(hc));
  }
  
  private String a(boolean paramBoolean1, Collection<String> paramCollection, boolean paramBoolean2)
  {
    Object localObject2 = ha + " != ? " + " AND " + ga + " <= ? ";
    Object localObject1 = localObject2;
    if (!paramBoolean1) {
      localObject1 = (String)localObject2 + " AND " + ia + " != 1 ";
    }
    Object localObject3 = null;
    localObject2 = localObject3;
    if (paramCollection != null)
    {
      localObject2 = localObject3;
      if (paramCollection.size() > 0) {
        localObject2 = ca + " IS NULL OR " + ca + " NOT IN('" + SqlHelper.a("','", paramCollection) + "')";
      }
    }
    if (paramBoolean2)
    {
      localObject1 = (String)localObject1 + " GROUP BY " + ca;
      paramCollection = (Collection<String>)localObject1;
      if (localObject2 != null) {
        paramCollection = (String)localObject1 + " HAVING " + (String)localObject2;
      }
    }
    do
    {
      return paramCollection;
      paramCollection = (Collection<String>)localObject1;
    } while (localObject2 == null);
    return (String)localObject1 + " AND ( " + (String)localObject2 + " )";
  }
  
  private void a(SQLiteStatement paramSQLiteStatement, long paramLong, String paramString)
  {
    paramSQLiteStatement.bindLong(kc + 1, paramLong);
    paramSQLiteStatement.bindString(lc + 1, paramString);
  }
  
  private void a(SQLiteStatement paramSQLiteStatement, com.path.android.jobqueue.a parama)
  {
    if (parama.a() != null) {
      paramSQLiteStatement.bindLong(ac + 1, parama.a().longValue());
    }
    paramSQLiteStatement.bindLong(bc + 1, parama.c());
    if (parama.i() != null) {
      paramSQLiteStatement.bindString(cc + 1, parama.i());
    }
    paramSQLiteStatement.bindLong(dc + 1, parama.d());
    byte[] arrayOfByte = f(parama);
    if (arrayOfByte != null) {
      paramSQLiteStatement.bindBlob(ec + 1, arrayOfByte);
    }
    paramSQLiteStatement.bindLong(fc + 1, parama.e());
    paramSQLiteStatement.bindLong(gc + 1, parama.g());
    paramSQLiteStatement.bindLong(hc + 1, parama.f());
    int j = ic;
    if (parama.b()) {}
    for (long l = 1L;; l = 0L)
    {
      paramSQLiteStatement.bindLong(j + 1, l);
      return;
    }
  }
  
  private void a(Long paramLong)
  {
    h.remove(paramLong);
    synchronized (c.e())
    {
      ???.clearBindings();
      ???.bindLong(1, paramLong.longValue());
      ???.execute();
      return;
    }
  }
  
  private byte[] a(Object paramObject)
  {
    try
    {
      byte[] arrayOfByte = d.a(paramObject);
      return arrayOfByte;
    }
    catch (Throwable localThrowable)
    {
      com.yelp.android.bp.b.a(localThrowable, "error while serializing object %s", new Object[] { paramObject.getClass().getSimpleName() });
    }
    return null;
  }
  
  private long d(com.path.android.jobqueue.a parama)
  {
    SQLiteStatement localSQLiteStatement1 = c.a();
    SQLiteStatement localSQLiteStatement2 = c.b();
    long l;
    try
    {
      b.beginTransaction();
      try
      {
        localSQLiteStatement1.clearBindings();
        a(localSQLiteStatement1, parama);
        l = localSQLiteStatement1.executeInsert();
        Iterator localIterator = parama.j().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localSQLiteStatement2.clearBindings();
          a(localSQLiteStatement2, l, str);
          localSQLiteStatement2.executeInsert();
          continue;
          parama = finally;
        }
      }
      finally
      {
        b.endTransaction();
      }
      b.setTransactionSuccessful();
    }
    finally {}
    b.endTransaction();
    parama.a(Long.valueOf(l));
    return l;
  }
  
  private void e(com.path.android.jobqueue.a parama)
  {
    SQLiteStatement localSQLiteStatement = c.f();
    parama.c(parama.d() + 1);
    parama.b(i);
    try
    {
      localSQLiteStatement.clearBindings();
      localSQLiteStatement.bindLong(1, parama.d());
      localSQLiteStatement.bindLong(2, i);
      localSQLiteStatement.bindLong(3, parama.a().longValue());
      localSQLiteStatement.execute();
      return;
    }
    finally {}
  }
  
  private byte[] f(com.path.android.jobqueue.a parama)
  {
    return a(parama.h());
  }
  
  public int a()
  {
    synchronized (c.c())
    {
      ???.clearBindings();
      ???.bindLong(1, i);
      int j = (int)???.simpleQueryForLong();
      return j;
    }
  }
  
  public int a(boolean paramBoolean, Collection<String> paramCollection)
  {
    String str2 = e.a(paramBoolean, paramCollection);
    String str1 = str2;
    if (str2 == null)
    {
      str1 = a(paramBoolean, paramCollection, true);
      str1 = "SELECT count(*) group_cnt, " + ca + " FROM " + "job_holder" + " WHERE " + str1;
      str1 = "SELECT SUM(case WHEN " + ca + " is null then group_cnt else 1 end) from (" + str1 + ")";
      e.a(str1, paramBoolean, paramCollection);
    }
    paramCollection = b.rawQuery(str1, new String[] { Long.toString(i), Long.toString(System.nanoTime()) });
    try
    {
      paramBoolean = paramCollection.moveToNext();
      if (!paramBoolean) {
        return 0;
      }
      int j = paramCollection.getInt(0);
      return j;
    }
    finally
    {
      paramCollection.close();
    }
  }
  
  public long a(com.path.android.jobqueue.a parama)
  {
    if (parama.l()) {
      return d(parama);
    }
    synchronized (c.a())
    {
      ???.clearBindings();
      a(???, parama);
      long l = ???.executeInsert();
      parama.a(Long.valueOf(l));
      return l;
    }
  }
  
  public long b(com.path.android.jobqueue.a parama)
  {
    if (parama.a() == null) {
      return a(parama);
    }
    parama.b(Long.MIN_VALUE);
    synchronized (c.d())
    {
      ???.clearBindings();
      a(???, parama);
      long l = ???.executeInsert();
      parama.a(Long.valueOf(l));
      return l;
    }
  }
  
  public com.path.android.jobqueue.a b(boolean paramBoolean, Collection<String> paramCollection)
  {
    String str = f.a(paramBoolean, paramCollection);
    Object localObject1 = str;
    if (str == null)
    {
      localObject1 = a(paramBoolean, paramCollection, false);
      localObject1 = c.a((String)localObject1, Integer.valueOf(1), new SqlHelper.Order[] { new SqlHelper.Order(a.b, SqlHelper.Order.Type.DESC), new SqlHelper.Order(a.f, SqlHelper.Order.Type.ASC), new SqlHelper.Order(a.a, SqlHelper.Order.Type.ASC) });
      f.a((String)localObject1, paramBoolean, paramCollection);
    }
    paramCollection = b.rawQuery((String)localObject1, new String[] { Long.toString(i), Long.toString(System.nanoTime()) });
    try
    {
      paramBoolean = paramCollection.moveToNext();
      if (!paramBoolean) {
        return null;
      }
      localObject1 = a(paramCollection);
      e((com.path.android.jobqueue.a)localObject1);
      return (com.path.android.jobqueue.a)localObject1;
    }
    catch (InvalidJobException localInvalidJobException)
    {
      a(Long.valueOf(paramCollection.getLong(0)));
      com.path.android.jobqueue.a locala = b(true, null);
      return locala;
    }
    finally
    {
      paramCollection.close();
    }
  }
  
  public Long c(boolean paramBoolean, Collection<String> arg2)
  {
    int j;
    if ((??? != null) && (!???.isEmpty())) {
      j = 1;
    }
    long l;
    while (j == 0)
    {
      if (paramBoolean) {}
      synchronized (c.g())
      {
        try
        {
          ???.clearBindings();
          l = ???.simpleQueryForLong();
          return Long.valueOf(l);
        }
        catch (SQLiteDoneException localSQLiteDoneException)
        {
          return null;
        }
        j = 0;
        continue;
        ??? = c.h();
      }
    }
    String str = g.a(paramBoolean, ???);
    Object localObject2 = str;
    if (str == null)
    {
      localObject2 = c.a(paramBoolean, ???);
      g.a((String)localObject2, paramBoolean, ???);
    }
    ??? = b.rawQuery((String)localObject2, new String[0]);
    try
    {
      paramBoolean = ???.moveToNext();
      if (!paramBoolean) {
        return null;
      }
      l = ???.getLong(0);
      return Long.valueOf(l);
    }
    finally
    {
      ???.close();
    }
  }
  
  public void c(com.path.android.jobqueue.a parama)
  {
    if (parama.a() == null)
    {
      com.yelp.android.bp.b.b("called remove with null job id.", new Object[0]);
      return;
    }
    a(parama.a());
  }
  
  private static class InvalidJobException
    extends Exception
  {}
  
  public static class a
    implements SqliteJobQueue.b
  {
    public <T extends Job> T a(byte[] paramArrayOfByte)
      throws IOException, ClassNotFoundException
    {
      localObjectInputStream = null;
      localObject = localObjectInputStream;
      if (paramArrayOfByte != null)
      {
        if (paramArrayOfByte.length == 0) {
          localObject = localObjectInputStream;
        }
      }
      else {
        label15:
        return (T)localObject;
      }
      try
      {
        localObjectInputStream = new ObjectInputStream(new ByteArrayInputStream(paramArrayOfByte));
      }
      finally
      {
        try
        {
          paramArrayOfByte = (Job)localObjectInputStream.readObject();
          localObject = paramArrayOfByte;
          if (localObjectInputStream == null) {
            break label15;
          }
          localObjectInputStream.close();
          return paramArrayOfByte;
        }
        finally
        {
          localObject = localObjectInputStream;
        }
        paramArrayOfByte = finally;
        localObject = null;
      }
      if (localObject != null) {
        ((ObjectInputStream)localObject).close();
      }
      throw paramArrayOfByte;
    }
    
    /* Error */
    public byte[] a(Object paramObject)
      throws IOException
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_2
      //   2: aload_1
      //   3: ifnonnull +7 -> 10
      //   6: aload_2
      //   7: astore_1
      //   8: aload_1
      //   9: areturn
      //   10: new 44	java/io/ByteArrayOutputStream
      //   13: dup
      //   14: invokespecial 45	java/io/ByteArrayOutputStream:<init>	()V
      //   17: astore_3
      //   18: new 47	java/io/ObjectOutputStream
      //   21: dup
      //   22: aload_3
      //   23: invokespecial 50	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
      //   26: aload_1
      //   27: invokeinterface 56 2 0
      //   32: aload_3
      //   33: invokevirtual 60	java/io/ByteArrayOutputStream:toByteArray	()[B
      //   36: astore_2
      //   37: aload_2
      //   38: astore_1
      //   39: aload_3
      //   40: ifnull -32 -> 8
      //   43: aload_3
      //   44: invokevirtual 61	java/io/ByteArrayOutputStream:close	()V
      //   47: aload_2
      //   48: areturn
      //   49: astore_1
      //   50: aconst_null
      //   51: astore_2
      //   52: aload_2
      //   53: ifnull +7 -> 60
      //   56: aload_2
      //   57: invokevirtual 61	java/io/ByteArrayOutputStream:close	()V
      //   60: aload_1
      //   61: athrow
      //   62: astore_1
      //   63: aload_3
      //   64: astore_2
      //   65: goto -13 -> 52
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	68	0	this	a
      //   0	68	1	paramObject	Object
      //   1	64	2	localObject	Object
      //   17	47	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
      // Exception table:
      //   from	to	target	type
      //   10	18	49	finally
      //   18	37	62	finally
    }
  }
  
  public static abstract interface b
  {
    public abstract <T extends Job> T a(byte[] paramArrayOfByte)
      throws IOException, ClassNotFoundException;
    
    public abstract byte[] a(Object paramObject)
      throws IOException;
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */