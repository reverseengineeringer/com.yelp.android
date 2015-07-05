package com.yelp.android.database;

import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.util.aa;

class g
  extends aa<Void, Void, Void>
{
  private final AsyncTask<?, ?, SQLiteDatabase> a;
  
  public g(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    a = paramAsyncTask;
  }
  
  protected Void a(Void... paramVarArgs)
  {
    try
    {
      ((SQLiteDatabase)a.get()).execSQL("DELETE FROM recently_viewed_businesses");
      return null;
    }
    catch (Exception paramVarArgs)
    {
      for (;;)
      {
        BaseYelpApplication.a("AdapterRecentlyViewedBusinesses", "Error clearing recents table.", new Object[] { paramVarArgs });
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */