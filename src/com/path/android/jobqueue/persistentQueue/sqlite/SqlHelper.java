package com.path.android.jobqueue.persistentQueue.sqlite;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.yelp.android.bp.b;
import java.util.Collection;
import java.util.Iterator;

public class SqlHelper
{
  String a;
  String b;
  final SQLiteDatabase c;
  final String d;
  final String e;
  final int f;
  final String g;
  final int h;
  final long i;
  private SQLiteStatement j;
  private SQLiteStatement k;
  private SQLiteStatement l;
  private SQLiteStatement m;
  private SQLiteStatement n;
  private SQLiteStatement o;
  private SQLiteStatement p;
  private SQLiteStatement q;
  
  public SqlHelper(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, int paramInt1, String paramString3, int paramInt2, long paramLong)
  {
    c = paramSQLiteDatabase;
    d = paramString1;
    f = paramInt1;
    e = paramString2;
    i = paramLong;
    h = paramInt2;
    g = paramString3;
    a = ("SELECT * FROM " + paramString1 + " WHERE " + aa + " = ?");
    b = ("SELECT * FROM " + paramString1 + " WHERE " + aa + " IN ( SELECT " + ka + " FROM " + paramString3 + " WHERE " + la + " = ?)");
  }
  
  public static String a(String paramString)
  {
    return "DROP TABLE IF EXISTS " + paramString;
  }
  
  public static String a(String paramString, b paramb, b... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder("CREATE TABLE IF NOT EXISTS ");
    localStringBuilder.append(paramString).append(" (");
    localStringBuilder.append(a).append(" ");
    localStringBuilder.append(b);
    localStringBuilder.append("  primary key autoincrement ");
    int i2 = paramVarArgs.length;
    int i1 = 0;
    while (i1 < i2)
    {
      paramString = paramVarArgs[i1];
      localStringBuilder.append(", `").append(a).append("` ").append(b);
      i1 += 1;
    }
    i2 = paramVarArgs.length;
    i1 = 0;
    while (i1 < i2)
    {
      paramString = paramVarArgs[i1];
      if (d != null)
      {
        paramb = d;
        localStringBuilder.append(", FOREIGN KEY(`").append(a).append("`) REFERENCES ").append(a).append("(`").append(b).append("`) ON DELETE CASCADE");
      }
      i1 += 1;
    }
    localStringBuilder.append(" );");
    b.a(localStringBuilder.toString(), new Object[0]);
    return localStringBuilder.toString();
  }
  
  public static String a(String paramString, Collection<String> paramCollection)
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
  
  public SQLiteStatement a()
  {
    if (j == null)
    {
      StringBuilder localStringBuilder = new StringBuilder("INSERT INTO ").append(d);
      localStringBuilder.append(" VALUES (");
      int i1 = 0;
      while (i1 < f)
      {
        if (i1 != 0) {
          localStringBuilder.append(",");
        }
        localStringBuilder.append("?");
        i1 += 1;
      }
      localStringBuilder.append(")");
      j = c.compileStatement(localStringBuilder.toString());
    }
    return j;
  }
  
  public String a(String paramString, Integer paramInteger, Order... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder("SELECT * FROM ");
    localStringBuilder.append(d);
    if (paramString != null) {
      localStringBuilder.append(" WHERE ").append(paramString);
    }
    int i3 = paramVarArgs.length;
    int i2 = 1;
    int i1 = 0;
    if (i1 < i3)
    {
      paramString = paramVarArgs[i1];
      if (i2 != 0) {
        localStringBuilder.append(" ORDER BY ");
      }
      for (;;)
      {
        localStringBuilder.append(a.a).append(" ").append(b);
        i1 += 1;
        i2 = 0;
        break;
        localStringBuilder.append(",");
      }
    }
    if (paramInteger != null) {
      localStringBuilder.append(" LIMIT ").append(paramInteger);
    }
    return localStringBuilder.toString();
  }
  
  public String a(boolean paramBoolean, Collection<String> paramCollection)
  {
    Object localObject2 = "SELECT " + ga + " FROM " + d + " WHERE " + ha + " != " + i;
    Object localObject1 = localObject2;
    if (!paramBoolean) {
      localObject1 = (String)localObject2 + " AND " + ia + " != 1";
    }
    localObject2 = localObject1;
    if (paramCollection != null)
    {
      localObject2 = localObject1;
      if (paramCollection.size() > 0) {
        localObject2 = (String)localObject1 + " AND (" + ca + " IS NULL OR " + ca + " NOT IN('" + a("','", paramCollection) + "'))";
      }
    }
    return (String)localObject2 + " ORDER BY " + ga + " ASC" + " LIMIT 1";
  }
  
  public void a(long paramLong)
  {
    c.execSQL("UPDATE job_holder SET " + ga + "=?", new Object[] { Long.valueOf(paramLong) });
  }
  
  public SQLiteStatement b()
  {
    if (k == null)
    {
      StringBuilder localStringBuilder = new StringBuilder("INSERT INTO ").append("job_holder_tags");
      localStringBuilder.append(" VALUES (");
      int i1 = 0;
      while (i1 < h)
      {
        if (i1 != 0) {
          localStringBuilder.append(",");
        }
        localStringBuilder.append("?");
        i1 += 1;
      }
      localStringBuilder.append(")");
      k = c.compileStatement(localStringBuilder.toString());
    }
    return k;
  }
  
  public SQLiteStatement c()
  {
    if (o == null) {
      o = c.compileStatement("SELECT COUNT(*) FROM " + d + " WHERE " + ha + " != ?");
    }
    return o;
  }
  
  public SQLiteStatement d()
  {
    if (l == null)
    {
      StringBuilder localStringBuilder = new StringBuilder("INSERT OR REPLACE INTO ").append(d);
      localStringBuilder.append(" VALUES (");
      int i1 = 0;
      while (i1 < f)
      {
        if (i1 != 0) {
          localStringBuilder.append(",");
        }
        localStringBuilder.append("?");
        i1 += 1;
      }
      localStringBuilder.append(")");
      l = c.compileStatement(localStringBuilder.toString());
    }
    return l;
  }
  
  public SQLiteStatement e()
  {
    if (m == null) {
      m = c.compileStatement("DELETE FROM " + d + " WHERE " + e + " = ?");
    }
    return m;
  }
  
  public SQLiteStatement f()
  {
    if (n == null)
    {
      String str = "UPDATE " + d + " SET " + da + " = ? , " + ha + " = ? " + " WHERE " + e + " = ? ";
      n = c.compileStatement(str);
    }
    return n;
  }
  
  public SQLiteStatement g()
  {
    if (p == null)
    {
      String str = "SELECT " + ga + " FROM " + d + " WHERE " + ha + " != " + i + " ORDER BY " + ga + " ASC" + " LIMIT 1";
      p = c.compileStatement(str);
    }
    return p;
  }
  
  public SQLiteStatement h()
  {
    if (q == null)
    {
      String str = "SELECT " + ga + " FROM " + d + " WHERE " + ha + " != " + i + " AND " + ia + " != 1" + " ORDER BY " + ga + " ASC" + " LIMIT 1";
      q = c.compileStatement(str);
    }
    return q;
  }
  
  public static class Order
  {
    final SqlHelper.b a;
    final Type b;
    
    public Order(SqlHelper.b paramb, Type paramType)
    {
      a = paramb;
      b = paramType;
    }
    
    public static enum Type
    {
      ASC,  DESC;
      
      private Type() {}
    }
  }
  
  public static class a
  {
    final String a;
    final String b;
    
    public a(String paramString1, String paramString2)
    {
      a = paramString1;
      b = paramString2;
    }
  }
  
  public static class b
  {
    final String a;
    final String b;
    public final int c;
    public final SqlHelper.a d;
    
    public b(String paramString1, String paramString2, int paramInt)
    {
      this(paramString1, paramString2, paramInt, null);
    }
    
    public b(String paramString1, String paramString2, int paramInt, SqlHelper.a parama)
    {
      a = paramString1;
      b = paramString2;
      c = paramInt;
      d = parama;
    }
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.persistentQueue.sqlite.SqlHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */