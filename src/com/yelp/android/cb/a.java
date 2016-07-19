package com.yelp.android.cb;

import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import com.yelp.android.database.h;
import com.yelp.android.database.h.b;
import com.yelp.android.database.i;
import com.yelp.android.database.m;
import com.yelp.android.serializable.InAppNotification;

public class a
{
  private final AsyncTask<?, ?, SQLiteDatabase> a;
  private m b;
  
  public a(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    a = paramAsyncTask;
    b = a().a();
  }
  
  public static i a()
  {
    return new b();
  }
  
  public void a(InAppNotification paramInAppNotification, h.b paramb)
  {
    paramInAppNotification = new a.2(this, paramInAppNotification);
    new h(a, paramb, paramInAppNotification).execute(new Void[0]);
  }
  
  public void a(Class paramClass, h.b paramb)
  {
    paramClass = new a.1(this, paramClass);
    new h(a, paramb, paramClass).execute(new Void[0]);
  }
  
  public void b(InAppNotification paramInAppNotification, h.b paramb)
  {
    paramInAppNotification = new a.3(this, paramInAppNotification);
    new h(a, paramb, paramInAppNotification).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cb.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */