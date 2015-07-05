package com.path.android.jobqueue.persistentQueue.sqlite;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.yelp.android.at.b;

public class SqlHelper
{
  String a;
  final SQLiteDatabase b;
  final String c;
  final String d;
  final int e;
  final long f;
  private SQLiteStatement g;
  private SQLiteStatement h;
  private SQLiteStatement i;
  private SQLiteStatement j;
  private SQLiteStatement k;
  private SQLiteStatement l;
  private SQLiteStatement m;
  
  public SqlHelper(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, int paramInt, long paramLong)
  {
    b = paramSQLiteDatabase;
    c = paramString1;
    e = paramInt;
    d = paramString2;
    f = paramLong;
    a = ("SELECT * FROM " + paramString1 + " WHERE " + aa + " = ?");
  }
  
  public static String a(String paramString)
  {
    return "DROP TABLE IF EXISTS " + paramString;
  }
  
  public static String a(String paramString, c paramc, c... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder("CREATE TABLE ");
    localStringBuilder.append(paramString).append(" (");
    localStringBuilder.append(a).append(" ");
    localStringBuilder.append(b);
    localStringBuilder.append("  primary key autoincrement ");
    int i1 = paramVarArgs.length;
    int n = 0;
    while (n < i1)
    {
      paramString = paramVarArgs[n];
      localStringBuilder.append(", `").append(a).append("` ").append(b);
      n += 1;
    }
    localStringBuilder.append(" );");
    b.a(localStringBuilder.toString(), new Object[0]);
    return localStringBuilder.toString();
  }
  
  public SQLiteStatement a()
  {
    if (g == null)
    {
      StringBuilder localStringBuilder = new StringBuilder("INSERT INTO ").append(c);
      localStringBuilder.append(" VALUES (");
      int n = 0;
      while (n < e)
      {
        if (n != 0) {
          localStringBuilder.append(",");
        }
        localStringBuilder.append("?");
        n += 1;
      }
      localStringBuilder.append(")");
      g = b.compileStatement(localStringBuilder.toString());
    }
    return g;
  }
  
  public String a(String paramString, Integer paramInteger, SqlHelper.Order... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder("SELECT * FROM ");
    localStringBuilder.append(c);
    if (paramString != null) {
      localStringBuilder.append(" WHERE ").append(paramString);
    }
    int i2 = paramVarArgs.length;
    int i1 = 1;
    int n = 0;
    if (n < i2)
    {
      paramString = paramVarArgs[n];
      if (i1 != 0) {
        localStringBuilder.append(" ORDER BY ");
      }
      for (;;)
      {
        localStringBuilder.append(a.a).append(" ").append(b);
        n += 1;
        i1 = 0;
        break;
        localStringBuilder.append(",");
      }
    }
    if (paramInteger != null) {
      localStringBuilder.append(" LIMIT ").append(paramInteger);
    }
    return localStringBuilder.toString();
  }
  
  public void a(long paramLong)
  {
    b.execSQL("UPDATE job_holder SET " + ga + "=?", new Object[] { Long.valueOf(paramLong) });
  }
  
  public SQLiteStatement b()
  {
    if (k == null) {
      k = b.compileStatement("SELECT COUNT(*) FROM " + c + " WHERE " + ha + " != ?");
    }
    return k;
  }
  
  public SQLiteStatement c()
  {
    if (h == null)
    {
      StringBuilder localStringBuilder = new StringBuilder("INSERT OR REPLACE INTO ").append(c);
      localStringBuilder.append(" VALUES (");
      int n = 0;
      while (n < e)
      {
        if (n != 0) {
          localStringBuilder.append(",");
        }
        localStringBuilder.append("?");
        n += 1;
      }
      localStringBuilder.append(")");
      h = b.compileStatement(localStringBuilder.toString());
    }
    return h;
  }
  
  public SQLiteStatement d()
  {
    if (i == null) {
      i = b.compileStatement("DELETE FROM " + c + " WHERE " + d + " = ?");
    }
    return i;
  }
  
  public SQLiteStatement e()
  {
    if (j == null)
    {
      String str = "UPDATE " + c + " SET " + da + " = ? , " + ha + " = ? " + " WHERE " + d + " = ? ";
      j = b.compileStatement(str);
    }
    return j;
  }
  
  public SQLiteStatement f()
  {
    if (l == null)
    {
      String str = "SELECT " + ga + " FROM " + c + " WHERE " + ha + " != " + f + " ORDER BY " + ga + " ASC" + " LIMIT 1";
      l = b.compileStatement(str);
    }
    return l;
  }
  
  public SQLiteStatement g()
  {
    if (m == null)
    {
      String str = "SELECT " + ga + " FROM " + c + " WHERE " + ha + " != " + f + " AND " + ia + " != 1" + " ORDER BY " + ga + " ASC" + " LIMIT 1";
      m = b.compileStatement(str);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.persistentQueue.sqlite.SqlHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */