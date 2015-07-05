package com.yelp.android.database.savedsearch;

import android.database.Cursor;
import com.yelp.android.appdata.AppData;
import com.yelp.android.database.z;
import com.yelp.android.serializable.Filter;

public class i
{
  private long a;
  private String b;
  private boolean c;
  private int d;
  private Filter e;
  private String f;
  private String g;
  private String h;
  
  public i(Cursor paramCursor1, Cursor paramCursor2)
  {
    com.yelp.android.appdata.i locali = AppData.b().f();
    long l1 = System.currentTimeMillis() / 1000L;
    long l2 = locali.Q();
    if ((l2 >= 0L) && (l1 - l2 > 86400L)) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      e = new DatabaseFilter(paramCursor1, paramCursor2, "id");
      a = paramCursor1.getLong(paramCursor1.getColumnIndex("id"));
      d = locali.O();
      b = locali.P();
      g = locali.T();
      f = locali.R();
      h = locali.S();
      return;
    }
  }
  
  public i(String paramString1, String paramString2, Filter paramFilter, String paramString3, int paramInt, String paramString4)
  {
    Filter localFilter = paramFilter;
    if (paramFilter == null) {
      localFilter = new Filter();
    }
    a = -1L;
    d = paramInt;
    c = false;
    b = paramString4;
    e = localFilter;
    f = paramString1;
    h = paramString2;
    g = paramString3;
  }
  
  public void a(z paramz1, z paramz2)
  {
    b(paramz1, paramz2);
    DatabaseFilter localDatabaseFilter = new DatabaseFilter(e);
    localDatabaseFilter.save(paramz1, paramz2);
    a = localDatabaseFilter.getId();
    if (a != -1L)
    {
      paramz1 = AppData.b().f();
      long l = System.currentTimeMillis() / 1000L;
      paramz1.a(a, d, b, l, f, h, g);
    }
  }
  
  public boolean a()
  {
    return c;
  }
  
  public String b()
  {
    return g;
  }
  
  public void b(z paramz1, z paramz2)
  {
    DatabaseFilter localDatabaseFilter = new DatabaseFilter(new Filter());
    localDatabaseFilter.setId(a);
    localDatabaseFilter.delete(paramz1, paramz2);
    a = -1L;
    AppData.b().f().W();
  }
  
  public String c()
  {
    return b;
  }
  
  public Filter d()
  {
    return e;
  }
  
  public String e()
  {
    return f;
  }
  
  public String f()
  {
    return h;
  }
  
  public int g()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.savedsearch.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */