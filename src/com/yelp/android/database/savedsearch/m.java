package com.yelp.android.database.savedsearch;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.yelp.android.database.aa;
import com.yelp.android.database.z;

public class m
  extends z
{
  public m(aa paramaa, SQLiteDatabase paramSQLiteDatabase)
  {
    super(paramaa, paramSQLiteDatabase);
  }
  
  public Cursor c()
  {
    String str = String.format("SELECT S.%s AS %s, S.%s, S.%s, F.%s AS %s, F.%s, F.%s, F.%s, F.%s, F.%s, F.%s, F.%s, F.%s, F.%s, F.%s, F.%s FROM %s AS S JOIN %s AS F WHERE S.%s= F.%s ORDER BY S.%s DESC", new Object[] { "id", "saved_search_join_id", "term", "filter_id", "id", "filter_join_id", "one_dollar", "two_dollar", "three_dollar", "four_dollar", "open", "active_deal", "open_time", "distance_label", "distance_radius", "sort", "hot_new", a, "Filter", "filter_id", "id", "last_accessed_time" });
    return b.rawQuery(str, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.savedsearch.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */