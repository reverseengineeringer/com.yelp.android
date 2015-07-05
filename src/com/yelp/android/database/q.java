package com.yelp.android.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.yelp.android.ay.e;
import com.yelp.android.ay.i;
import java.util.concurrent.ExecutionException;

public class q
{
  r a;
  private s b;
  private l c;
  private com.yelp.android.database.savedsearch.a d;
  private j e;
  private d f;
  private com.yelp.android.ax.a g;
  private com.yelp.android.ay.a h;
  private e i;
  private com.yelp.android.database.savedsearch.c j;
  private i k;
  private AdapterNearbyFilters l;
  
  public q(Context paramContext)
  {
    b = new s(paramContext);
    k();
  }
  
  private void k()
  {
    a = new r();
    c = new l(a);
    d = new com.yelp.android.database.savedsearch.a(a);
    e = new c(a);
    f = new d(a);
    g = new com.yelp.android.ax.a(a);
    h = new com.yelp.android.ay.a(a);
    i = new e(a);
    j = new com.yelp.android.database.savedsearch.c(a);
    l = new AdapterNearbyFilters(a);
    k = new i(a);
    a.a(new t[] { c, e, f, g });
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
  
  public com.yelp.android.database.savedsearch.c b()
  {
    return j;
  }
  
  public l c()
  {
    return c;
  }
  
  public com.yelp.android.database.savedsearch.a d()
  {
    return d;
  }
  
  public j e()
  {
    return e;
  }
  
  public d f()
  {
    return f;
  }
  
  public com.yelp.android.ax.a g()
  {
    return g;
  }
  
  public com.yelp.android.ay.a h()
  {
    return h;
  }
  
  public e i()
  {
    return i;
  }
  
  public i j()
  {
    return k;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */