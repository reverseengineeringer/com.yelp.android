package com.yelp.android.database.savedsearch;

import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import com.yelp.android.database.aa;
import com.yelp.android.database.u;
import com.yelp.android.database.w;
import com.yelp.android.database.y;

public class c
{
  private final AsyncTask<?, ?, SQLiteDatabase> a;
  private aa b;
  private aa c;
  private aa d;
  
  public c(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    a = paramAsyncTask;
    b = a().a();
    c = new j().a();
    d = new h().a();
  }
  
  public static y a()
  {
    return new l();
  }
  
  public void a(k paramk)
  {
    paramk = new g(this, paramk);
    new u(a, null, paramk).execute(new Void[0]);
  }
  
  public void a(k paramk, w paramw)
  {
    paramk = new e(this, paramk);
    new u(a, paramw, paramk).execute(new Void[0]);
  }
  
  public void a(w paramw)
  {
    d locald = new d(this);
    new u(a, paramw, locald).execute(new Void[0]);
  }
  
  public void b()
  {
    f localf = new f(this);
    new u(a, null, localf).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.savedsearch.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */