package com.yelp.android.cc;

import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import com.yelp.android.database.h;
import com.yelp.android.database.h.b;
import com.yelp.android.database.i;
import com.yelp.android.database.m;
import com.yelp.android.serializable.YelpBusiness;

public class c
{
  private final AsyncTask<?, ?, SQLiteDatabase> a;
  private final m b;
  
  public c(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    a = paramAsyncTask;
    b = a().a();
  }
  
  public static i a()
  {
    return new l();
  }
  
  public void a(k paramk, h.b paramb)
  {
    new h(a, paramb, new c.2(this, paramk)).execute(new Void[0]);
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    b(paramYelpBusiness, null);
  }
  
  public void a(YelpBusiness paramYelpBusiness, h.b paramb)
  {
    new h(a, paramb, new c.1(this, paramYelpBusiness)).execute(new Void[0]);
  }
  
  public void b(YelpBusiness paramYelpBusiness, h.b paramb)
  {
    new h(a, paramb, new c.3(this, paramYelpBusiness)).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cc.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */