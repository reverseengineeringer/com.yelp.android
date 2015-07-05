package com.path.android.jobqueue.persistentQueue.sqlite;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteStatement;
import com.path.android.jobqueue.BaseJob;
import com.path.android.jobqueue.g;
import java.util.Collection;
import java.util.Iterator;

public class SqliteJobQueue
  implements g
{
  a a;
  SQLiteDatabase b;
  SqlHelper c;
  f d;
  b e;
  b f;
  private final long g;
  
  public SqliteJobQueue(Context paramContext, long paramLong, String paramString, f paramf)
  {
    g = paramLong;
    a = new a(paramContext, "db_" + paramString);
    b = a.getWritableDatabase();
    c = new SqlHelper(b, "job_holder", aa, 9, paramLong);
    d = paramf;
    e = new b();
    f = new b();
    c.a(Long.MIN_VALUE);
  }
  
  private BaseJob a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = d.a(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      com.yelp.android.at.b.a(paramArrayOfByte, "error while deserializing job", new Object[0]);
    }
    return null;
  }
  
  private com.path.android.jobqueue.b a(Cursor paramCursor)
  {
    BaseJob localBaseJob = a(paramCursor.getBlob(ec));
    if (localBaseJob == null) {
      throw new SqliteJobQueue.InvalidBaseJobException(null);
    }
    return new com.path.android.jobqueue.b(Long.valueOf(paramCursor.getLong(ac)), paramCursor.getInt(bc), paramCursor.getString(cc), paramCursor.getInt(dc), localBaseJob, paramCursor.getLong(fc), paramCursor.getLong(gc), paramCursor.getLong(hc));
  }
  
  private static String a(String paramString, Collection<String> paramCollection)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      String str = (String)paramCollection.next();
      if (localStringBuilder.length() != 0) {
        localStringBuilder.append(paramString);
      }
      localStringBuilder.append(str);
    }
    return localStringBuilder.toString();
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
        localObject2 = ca + " IS NULL OR " + ca + " NOT IN('" + a("','", paramCollection) + "')";
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
  
  private void a(SQLiteStatement paramSQLiteStatement, com.path.android.jobqueue.b paramb)
  {
    if (paramb.a() != null) {
      paramSQLiteStatement.bindLong(ac + 1, paramb.a().longValue());
    }
    paramSQLiteStatement.bindLong(bc + 1, paramb.c());
    if (paramb.i() != null) {
      paramSQLiteStatement.bindString(cc + 1, paramb.i());
    }
    paramSQLiteStatement.bindLong(dc + 1, paramb.d());
    byte[] arrayOfByte = e(paramb);
    if (arrayOfByte != null) {
      paramSQLiteStatement.bindBlob(ec + 1, arrayOfByte);
    }
    paramSQLiteStatement.bindLong(fc + 1, paramb.e());
    paramSQLiteStatement.bindLong(gc + 1, paramb.g());
    paramSQLiteStatement.bindLong(hc + 1, paramb.f());
    int i = ic;
    if (paramb.b()) {}
    for (long l = 1L;; l = 0L)
    {
      paramSQLiteStatement.bindLong(i + 1, l);
      return;
    }
  }
  
  private void a(Long paramLong)
  {
    synchronized (c.d())
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
      com.yelp.android.at.b.a(localThrowable, "error while serializing object %s", new Object[] { paramObject.getClass().getSimpleName() });
    }
    return null;
  }
  
  private void d(com.path.android.jobqueue.b paramb)
  {
    SQLiteStatement localSQLiteStatement = c.e();
    paramb.b(paramb.d() + 1);
    paramb.a(g);
    try
    {
      localSQLiteStatement.clearBindings();
      localSQLiteStatement.bindLong(1, paramb.d());
      localSQLiteStatement.bindLong(2, g);
      localSQLiteStatement.bindLong(3, paramb.a().longValue());
      localSQLiteStatement.execute();
      return;
    }
    finally {}
  }
  
  private byte[] e(com.path.android.jobqueue.b paramb)
  {
    return a(paramb.h());
  }
  
  public int a()
  {
    synchronized (c.b())
    {
      ???.clearBindings();
      ???.bindLong(1, g);
      int i = (int)???.simpleQueryForLong();
      return i;
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
    paramCollection = b.rawQuery(str1, new String[] { Long.toString(g), Long.toString(System.nanoTime()) });
    try
    {
      paramBoolean = paramCollection.moveToNext();
      if (!paramBoolean) {
        return 0;
      }
      int i = paramCollection.getInt(0);
      return i;
    }
    finally
    {
      paramCollection.close();
    }
  }
  
  public long a(com.path.android.jobqueue.b paramb)
  {
    synchronized (c.a())
    {
      ???.clearBindings();
      a(???, paramb);
      long l = ???.executeInsert();
      paramb.a(Long.valueOf(l));
      return l;
    }
  }
  
  public Long a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    synchronized (c.f())
    {
      try
      {
        ???.clearBindings();
        long l = ???.simpleQueryForLong();
        return Long.valueOf(l);
      }
      catch (SQLiteDoneException localSQLiteDoneException)
      {
        return null;
      }
      ??? = c.g();
    }
  }
  
  public long b(com.path.android.jobqueue.b paramb)
  {
    if (paramb.a() == null) {
      return a(paramb);
    }
    paramb.a(Long.MIN_VALUE);
    synchronized (c.c())
    {
      ???.clearBindings();
      a(???, paramb);
      long l = ???.executeInsert();
      paramb.a(Long.valueOf(l));
      return l;
    }
  }
  
  public com.path.android.jobqueue.b b(boolean paramBoolean, Collection<String> paramCollection)
  {
    String str = f.a(paramBoolean, paramCollection);
    Object localObject1 = str;
    if (str == null)
    {
      localObject1 = a(paramBoolean, paramCollection, false);
      localObject1 = c.a((String)localObject1, Integer.valueOf(1), new SqlHelper.Order[] { new SqlHelper.Order(a.b, SqlHelper.Order.Type.DESC), new SqlHelper.Order(a.f, SqlHelper.Order.Type.ASC), new SqlHelper.Order(a.a, SqlHelper.Order.Type.ASC) });
      f.a((String)localObject1, paramBoolean, paramCollection);
    }
    paramCollection = b.rawQuery((String)localObject1, new String[] { Long.toString(g), Long.toString(System.nanoTime()) });
    try
    {
      paramBoolean = paramCollection.moveToNext();
      if (!paramBoolean) {
        return null;
      }
      localObject1 = a(paramCollection);
      d((com.path.android.jobqueue.b)localObject1);
      return (com.path.android.jobqueue.b)localObject1;
    }
    catch (SqliteJobQueue.InvalidBaseJobException localInvalidBaseJobException)
    {
      a(Long.valueOf(paramCollection.getLong(0)));
      com.path.android.jobqueue.b localb = b(true, null);
      return localb;
    }
    finally
    {
      paramCollection.close();
    }
  }
  
  public void c(com.path.android.jobqueue.b paramb)
  {
    if (paramb.a() == null)
    {
      com.yelp.android.at.b.b("called remove with null job id.", new Object[0]);
      return;
    }
    a(paramb.a());
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */