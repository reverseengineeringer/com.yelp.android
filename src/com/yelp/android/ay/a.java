package com.yelp.android.ay;

import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import com.yelp.android.database.aa;
import com.yelp.android.database.u;
import com.yelp.android.database.w;
import com.yelp.android.database.y;
import com.yelp.android.serializable.User;

public class a
{
  private final AsyncTask<?, ?, SQLiteDatabase> a;
  private final aa b;
  
  public a(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    a = paramAsyncTask;
    b = a().a();
  }
  
  public static y a()
  {
    return new n();
  }
  
  public void a(m paramm, w paramw)
  {
    paramm = new o(paramm);
    new u(a, paramw, new c(this, paramm)).execute(new Void[0]);
  }
  
  public void a(User paramUser)
  {
    b(paramUser, null);
  }
  
  public void a(User paramUser, w paramw)
  {
    new u(a, paramw, new b(this, paramUser)).execute(new Void[0]);
  }
  
  public void b(User paramUser, w paramw)
  {
    new u(a, paramw, new d(this, paramUser)).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */