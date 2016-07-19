package com.yelp.android.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.concurrent.ExecutionException;

public class g
{
  g.a a;
  private g.b b;
  private d c;
  private c d;
  private b e;
  private com.yelp.android.ca.a f;
  private com.yelp.android.cc.a g;
  private com.yelp.android.cc.b h;
  private com.yelp.android.cc.c i;
  private com.yelp.android.cb.a j;
  
  public g(Context paramContext)
    throws Exception
  {
    b = new g.b(paramContext);
    j();
  }
  
  private void j()
  {
    a = new g.a();
    c = new d(a);
    d = new a(a);
    e = new b(a);
    f = new com.yelp.android.ca.a(a);
    g = new com.yelp.android.cc.a(a);
    h = new com.yelp.android.cc.b(a);
    j = new com.yelp.android.cb.a(a);
    i = new com.yelp.android.cc.c(a);
    a.a(new c[] { c, d, e, f });
    a.b(new SQLiteOpenHelper[] { b });
  }
  
  public boolean a()
  {
    boolean bool4 = false;
    boolean bool5 = false;
    boolean bool1 = false;
    boolean bool2 = bool4;
    boolean bool3 = bool5;
    try
    {
      SQLiteDatabase localSQLiteDatabase = (SQLiteDatabase)a.get();
      bool2 = bool4;
      bool3 = bool5;
      if (!localSQLiteDatabase.isOpen()) {
        bool1 = true;
      }
      if (!bool1)
      {
        bool2 = bool1;
        bool3 = bool1;
        localSQLiteDatabase.close();
        return true;
      }
    }
    catch (ExecutionException localExecutionException)
    {
      return bool2;
    }
    catch (InterruptedException localInterruptedException)
    {
      return bool3;
    }
    return bool1;
  }
  
  public d b()
  {
    return c;
  }
  
  public c c()
  {
    return d;
  }
  
  public b d()
  {
    return e;
  }
  
  public com.yelp.android.ca.a e()
  {
    return f;
  }
  
  public com.yelp.android.cc.a f()
  {
    return g;
  }
  
  public com.yelp.android.cc.b g()
  {
    return h;
  }
  
  public com.yelp.android.cc.c h()
  {
    return i;
  }
  
  public com.yelp.android.cb.a i()
  {
    return j;
  }
  
  public static abstract interface c
  {
    public abstract void a(SQLiteDatabase paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */