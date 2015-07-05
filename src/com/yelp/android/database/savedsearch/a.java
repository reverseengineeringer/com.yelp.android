package com.yelp.android.database.savedsearch;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import com.yelp.android.appdata.AppData;
import com.yelp.android.database.aa;
import com.yelp.android.database.u;
import com.yelp.android.database.z;

public class a
{
  private final AsyncTask<?, ?, SQLiteDatabase> a;
  private aa b;
  private aa c;
  
  public a(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    a = paramAsyncTask;
    b = new j().a();
    c = new h().a();
  }
  
  public i a()
  {
    Object localObject2;
    z localz1;
    z localz2;
    do
    {
      long l;
      try
      {
        localObject2 = (SQLiteDatabase)a.get();
        l = AppData.b().f().N();
        if (l == -1L)
        {
          i locali = null;
          return locali;
        }
      }
      catch (Exception localException)
      {
        return null;
      }
      localz1 = new z(b, (SQLiteDatabase)localObject2);
      Object localObject1 = localz1.a("id", String.valueOf(l));
      if (!((Cursor)localObject1).moveToFirst()) {
        break;
      }
      localz2 = new z(c, (SQLiteDatabase)localObject2);
      localObject2 = new i((Cursor)localObject1, localz2.a("filter_id", String.valueOf(l)));
      localObject1 = localObject2;
    } while (!((i)localObject2).a());
    ((i)localObject2).b(localz1, localz2);
    return null;
  }
  
  public void a(i parami)
  {
    parami = new b(this, parami);
    new u(a, null, parami).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.savedsearch.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */