package com.yelp.android.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.os.AsyncTask;
import android.util.Log;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

public class d
  implements t
{
  public static final aa a = new ab("recently_viewed_businesses").a(new p("_id", ColumnType.INTEGER, ColumnModifier.PRIMARY_KEY_AUTOINCREMENT)).a(new p("business_id", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new p("business_json", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new p("yelp_request_id", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new p("path_business_image", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a("business_id_idx", new String[] { "business_id" }).a();
  private final AsyncTask<?, ?, SQLiteDatabase> b;
  private ArrayList<YelpBusiness> c;
  private SQLiteStatement d;
  
  public d(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    b = paramAsyncTask;
  }
  
  private YelpBusiness a(Cursor paramCursor)
  {
    try
    {
      YelpBusiness localYelpBusiness = (YelpBusiness)YelpBusiness.CREATOR.parse(new JSONObject(paramCursor.getString(0)));
    }
    catch (Exception localException1)
    {
      try
      {
        localYelpBusiness.setYelpRequestId(paramCursor.getString(1));
        return localYelpBusiness;
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          paramCursor = localException1;
          Object localObject = localException2;
        }
      }
      localException1 = localException1;
      paramCursor = null;
    }
    tmp48_45[0] = localException1;
    BaseYelpApplication.a("AdapterRecentlyViewedBusinesses", "Error deserializing last viewed business from recents table.", tmp48_45);
    return paramCursor;
  }
  
  static String a(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    paramSQLiteDatabase = paramSQLiteDatabase.query("recently_viewed_businesses", new String[] { "_id" }, "business_id = ?", new String[] { paramString }, null, null, null, "1");
    if (paramSQLiteDatabase != null) {}
    try
    {
      if ((paramSQLiteDatabase.getCount() > 0) && (paramSQLiteDatabase.moveToFirst()))
      {
        paramString = paramSQLiteDatabase.getString(0);
        return paramString;
      }
      return null;
    }
    catch (Exception paramString)
    {
      BaseYelpApplication.a("AdapterRecentlyViewedBusinesses", "Error deleting existing business entry from recents.", new Object[] { paramString });
      return null;
    }
    finally
    {
      paramSQLiteDatabase.close();
    }
  }
  
  private static long b(SQLiteStatement paramSQLiteStatement)
  {
    try
    {
      long l = paramSQLiteStatement.simpleQueryForLong();
      return l;
    }
    catch (Exception paramSQLiteStatement)
    {
      BaseYelpApplication.a("AdapterRecentlyViewedBusinesses", "Error executing query for recents table.", new Object[] { paramSQLiteStatement });
    }
    return 0L;
  }
  
  static ContentValues b(YelpBusiness paramYelpBusiness)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("business_id", paramYelpBusiness.getId());
    localContentValues.put("business_json", paramYelpBusiness.getRawJSON());
    String str = paramYelpBusiness.getYelpRequestId();
    paramYelpBusiness = str;
    if (str == null) {
      paramYelpBusiness = "";
    }
    localContentValues.put("yelp_request_id", paramYelpBusiness);
    localContentValues.put("path_business_image", "path.to.image");
    return localContentValues;
  }
  
  private void b(SQLiteDatabase paramSQLiteDatabase)
  {
    for (;;)
    {
      ArrayList localArrayList;
      try
      {
        boolean bool = b();
        if (bool) {
          return;
        }
        d = paramSQLiteDatabase.compileStatement("SELECT COUNT(*) FROM recently_viewed_businesses");
        localArrayList = new ArrayList();
        paramSQLiteDatabase = paramSQLiteDatabase.query("recently_viewed_businesses", new String[] { "business_json", "yelp_request_id" }, null, null, null, null, "_id DESC");
        if (paramSQLiteDatabase != null)
        {
          if (paramSQLiteDatabase.moveToFirst())
          {
            YelpBusiness localYelpBusiness = a(paramSQLiteDatabase);
            if (localYelpBusiness != null) {
              localArrayList.add(localYelpBusiness);
            }
            if (paramSQLiteDatabase.moveToNext())
            {
              localYelpBusiness = a(paramSQLiteDatabase);
              if (localYelpBusiness == null) {
                continue;
              }
              localArrayList.add(localYelpBusiness);
              continue;
            }
          }
          paramSQLiteDatabase.close();
        }
      }
      finally {}
      c = localArrayList;
    }
  }
  
  public static y d()
  {
    return new e();
  }
  
  public AsyncTask<String, Void, Void> a(String paramString)
  {
    if (c != null)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        YelpBusiness localYelpBusiness = (YelpBusiness)localIterator.next();
        if (paramString.equals(localYelpBusiness.getId())) {
          localYelpBusiness.setCheckInOffer(null);
        }
      }
    }
    return new h(b).execute(new String[] { paramString });
  }
  
  public ArrayList<YelpBusiness> a()
  {
    if (c == null) {}
    try
    {
      b((SQLiteDatabase)b.get());
      return c;
    }
    catch (Exception localException)
    {
      Log.w("AdapterRecentlyViewedBusinesses", "There were issues getting the database open", localException);
    }
    return new ArrayList();
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase)
  {
    b(paramSQLiteDatabase);
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    String str = paramYelpBusiness.getId();
    if (c != null)
    {
      int j = c.size();
      int i = 0;
      while (i < j)
      {
        if (((YelpBusiness)c.get(i)).getId().equals(str)) {
          c.set(i, paramYelpBusiness);
        }
        i += 1;
      }
    }
    new i(b).execute(new YelpBusiness[] { paramYelpBusiness });
  }
  
  public boolean b()
  {
    return c != null;
  }
  
  public AsyncTask<YelpBusiness, Void, Void> c(YelpBusiness paramYelpBusiness)
  {
    String str = paramYelpBusiness.getId();
    int j;
    int i;
    if (c != null)
    {
      j = c.size();
      i = 0;
    }
    for (;;)
    {
      if (i < j)
      {
        if (((YelpBusiness)c.get(i)).getId().equals(str)) {
          c.remove(i);
        }
      }
      else
      {
        if (c.size() >= 25) {
          c.remove(c.size() - 1);
        }
        c.add(0, paramYelpBusiness);
        return new f(b, d).execute(new YelpBusiness[] { paramYelpBusiness });
      }
      i += 1;
    }
  }
  
  public void c()
  {
    if (c != null) {
      c.clear();
    }
    new g(b).b(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */