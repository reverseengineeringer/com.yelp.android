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

public class b
  implements g.c
{
  public static final m a = new n("recently_viewed_businesses").a(new f("_id", ColumnType.INTEGER, ColumnModifier.PRIMARY_KEY_AUTOINCREMENT)).a(new f("business_id", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new f("business_json", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new f("yelp_request_id", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new f("path_business_image", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a("business_id_idx", new String[] { "business_id" }).a();
  private final AsyncTask<?, ?, SQLiteDatabase> b;
  private ArrayList<YelpBusiness> c;
  private SQLiteStatement d;
  
  public b(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
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
        localYelpBusiness.a(paramCursor.getString(1));
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
    localObject = null;
    localCursor = paramSQLiteDatabase.query("recently_viewed_businesses", new String[] { "_id" }, "business_id = ?", new String[] { paramString }, null, null, null, "1");
    if (localCursor != null) {}
    label79:
    do
    {
      try
      {
        if ((localCursor.getCount() <= 0) || (!localCursor.moveToFirst())) {
          break label79;
        }
        paramSQLiteDatabase = localCursor.getString(0);
        paramString = paramSQLiteDatabase;
        if (localCursor != null)
        {
          localCursor.close();
          paramString = paramSQLiteDatabase;
        }
      }
      catch (Exception paramSQLiteDatabase)
      {
        BaseYelpApplication.a("AdapterRecentlyViewedBusinesses", "Error deleting existing business entry from recents.", new Object[] { paramSQLiteDatabase });
        paramString = (String)localObject;
        return null;
      }
      finally
      {
        if (localCursor == null) {
          break;
        }
        localCursor.close();
      }
      return paramString;
      paramString = (String)localObject;
    } while (localCursor == null);
    localCursor.close();
    return null;
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
    localContentValues.put("business_id", paramYelpBusiness.aD());
    localContentValues.put("business_json", paramYelpBusiness.c());
    String str = paramYelpBusiness.n();
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
  
  public static i d()
  {
    return new b.1();
  }
  
  public AsyncTask<String, Void, Void> a(String paramString)
  {
    if (c != null)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        YelpBusiness localYelpBusiness = (YelpBusiness)localIterator.next();
        if (paramString.equals(localYelpBusiness.aD())) {
          localYelpBusiness.a(null);
        }
      }
    }
    return new b.c(b).execute(new String[] { paramString });
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
    String str = paramYelpBusiness.aD();
    if (c != null)
    {
      int j = c.size();
      int i = 0;
      while (i < j)
      {
        if (((YelpBusiness)c.get(i)).aD().equals(str)) {
          c.set(i, paramYelpBusiness);
        }
        i += 1;
      }
    }
    new b.d(b).execute(new YelpBusiness[] { paramYelpBusiness });
  }
  
  public boolean b()
  {
    return c != null;
  }
  
  public AsyncTask<YelpBusiness, Void, Void> c(YelpBusiness paramYelpBusiness)
  {
    String str = paramYelpBusiness.aD();
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
        if (((YelpBusiness)c.get(i)).aD().equals(str)) {
          c.remove(i);
        }
      }
      else
      {
        if (c.size() >= 25) {
          c.remove(c.size() - 1);
        }
        c.add(0, paramYelpBusiness);
        return new b.a(b, d).execute(new YelpBusiness[] { paramYelpBusiness });
      }
      i += 1;
    }
  }
  
  public void c()
  {
    if (c != null) {
      c.clear();
    }
    new b.b(b).b(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */