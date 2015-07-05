package com.yelp.android.database;

import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.yelp.android.serializable.YelpBusiness;

class i
  extends AsyncTask<YelpBusiness, Void, Void>
{
  private final AsyncTask<?, ?, SQLiteDatabase> a;
  
  public i(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    a = paramAsyncTask;
  }
  
  protected Void a(YelpBusiness... paramVarArgs)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = (SQLiteDatabase)a.get();
      paramVarArgs = paramVarArgs[0];
      String str = d.a(localSQLiteDatabase, paramVarArgs.getId());
      if (!TextUtils.isEmpty(str)) {
        localSQLiteDatabase.update("recently_viewed_businesses", d.b(paramVarArgs), "_id = ?", new String[] { str });
      }
      return null;
    }
    catch (Exception paramVarArgs)
    {
      Log.w("AdapterRecentlyViewedBusinesses", "Could not update the business", paramVarArgs);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */