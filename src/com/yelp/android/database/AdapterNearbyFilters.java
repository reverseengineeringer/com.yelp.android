package com.yelp.android.database;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.List;

public class AdapterNearbyFilters
{
  public static final aa a = new ab("saved_nearby").a(new p("_id", ColumnType.INTEGER, ColumnModifier.PRIMARY_KEY_AUTOINCREMENT)).a(new p("term", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new p("filter_exists", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new p("prices", ColumnType.INTEGER)).a(new p("open", ColumnType.INTEGER)).a(new p("radius", ColumnType.TEXT)).a(new p("radius_label", ColumnType.TEXT)).a(new p("sort_ordinal", ColumnType.INTEGER)).a(new p("attributes", ColumnType.TEXT)).a();
  private AsyncTask<?, ?, SQLiteDatabase> b;
  private SQLiteDatabase c;
  
  public AdapterNearbyFilters(SQLiteDatabase paramSQLiteDatabase)
  {
    c = paramSQLiteDatabase;
    b = null;
  }
  
  public AdapterNearbyFilters(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    b = paramAsyncTask;
  }
  
  public static y a()
  {
    return new a();
  }
  
  private SQLiteDatabase b()
  {
    if (b != null) {
      try
      {
        SQLiteDatabase localSQLiteDatabase = (SQLiteDatabase)b.get();
        return localSQLiteDatabase;
      }
      catch (Exception localException)
      {
        YelpLog.e("AdapterNearbySearch", "Failed to aquire database.", localException);
        return null;
      }
    }
    return c;
  }
  
  public List<b> a(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = b();
    if (localObject == null) {
      return localArrayList;
    }
    localObject = ((SQLiteDatabase)localObject).query("saved_nearby", null, null, null, null, null, null);
    if ((localObject != null) && (((Cursor)localObject).moveToFirst()))
    {
      localArrayList.add(b.a(paramContext, (Cursor)localObject));
      while (((Cursor)localObject).moveToNext()) {
        localArrayList.add(b.a(paramContext, (Cursor)localObject));
      }
    }
    ((Cursor)localObject).close();
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.AdapterNearbyFilters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */