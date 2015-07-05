package com.yelp.android.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

class h
  extends AsyncTask<String, Void, Void>
{
  private final AsyncTask<?, ?, SQLiteDatabase> a;
  
  public h(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    a = paramAsyncTask;
  }
  
  protected Void a(String... paramVarArgs)
  {
    String str = paramVarArgs[0];
    for (;;)
    {
      try
      {
        localSQLiteDatabase = (SQLiteDatabase)a.get();
        paramVarArgs = localSQLiteDatabase.query("recently_viewed_businesses", new String[] { "business_json", "yelp_request_id" }, "business_id= ?", new String[] { str }, null, null, null);
      }
      catch (Exception paramVarArgs)
      {
        SQLiteDatabase localSQLiteDatabase;
        Object localObject2;
        ContentValues localContentValues;
        label137:
        Log.w("AdapterRecentlyViewedBusinesses", "Could not remove Offer from Recents", paramVarArgs);
        return null;
      }
      try
      {
        if (paramVarArgs.moveToFirst()) {
          localObject2 = paramVarArgs.getString(0);
        }
      }
      finally
      {
        paramVarArgs.close();
      }
    }
    try
    {
      localObject2 = new JSONObject((String)localObject2);
      if (((JSONObject)localObject2).has("check_in_offer")) {
        ((JSONObject)localObject2).put("check_in_offer", null);
      }
      localContentValues = new ContentValues();
      localContentValues.put("business_json", ((JSONObject)localObject2).toString());
      localSQLiteDatabase.update("recently_viewed_businesses", localContentValues, "business_id = ?", new String[] { str });
    }
    catch (JSONException localJSONException)
    {
      break label137;
    }
    paramVarArgs.close();
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */