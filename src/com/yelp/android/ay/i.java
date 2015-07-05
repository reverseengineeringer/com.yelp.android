package com.yelp.android.ay;

import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import com.yelp.android.database.aa;
import com.yelp.android.database.w;
import com.yelp.android.database.y;
import com.yelp.android.serializable.YelpBusiness;

public class i
{
  private final AsyncTask<?, ?, SQLiteDatabase> a;
  private final aa b;
  
  public i(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    a = paramAsyncTask;
    b = a().a();
  }
  
  public static y a()
  {
    return new u();
  }
  
  public void a(t paramt, w paramw)
  {
    new com.yelp.android.database.u(a, paramw, new k(this, paramt)).execute(new Void[0]);
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    b(paramYelpBusiness, null);
  }
  
  public void a(YelpBusiness paramYelpBusiness, w paramw)
  {
    new com.yelp.android.database.u(a, paramw, new j(this, paramYelpBusiness)).execute(new Void[0]);
  }
  
  public void b(YelpBusiness paramYelpBusiness, w paramw)
  {
    new com.yelp.android.database.u(a, paramw, new l(this, paramYelpBusiness)).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */