package com.yelp.android.database.savedsearch;

import android.content.ContentValues;
import android.database.Cursor;
import com.yelp.android.appdata.AppData;
import com.yelp.android.database.z;
import com.yelp.android.serializable.Filter;
import java.util.Calendar;

public class k
{
  private Filter a;
  private String b;
  private long c;
  
  public k(Cursor paramCursor1, Cursor paramCursor2)
  {
    a = new DatabaseFilter(paramCursor1, paramCursor2, "filter_join_id");
    b = paramCursor1.getString(paramCursor1.getColumnIndex("term"));
    c = paramCursor1.getLong(paramCursor1.getColumnIndex("saved_search_join_id"));
  }
  
  public k(String paramString, Filter paramFilter)
  {
    this(paramString, paramFilter, -1L);
  }
  
  public k(String paramString, Filter paramFilter, long paramLong)
  {
    Filter localFilter = paramFilter;
    if (paramFilter == null) {
      localFilter = new Filter();
    }
    paramFilter = paramString;
    if (paramString == null) {
      paramFilter = AppData.b().getString(2131165475);
    }
    a = localFilter;
    b = paramFilter;
    c = paramLong;
  }
  
  public Filter a()
  {
    return a;
  }
  
  void a(z paramz)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("last_accessed_time", Long.valueOf(Calendar.getInstance().getTimeInMillis()));
    paramz.a("id", String.valueOf(c), localContentValues);
  }
  
  public void a(z paramz1, z paramz2, z paramz3)
  {
    DatabaseFilter localDatabaseFilter = new DatabaseFilter(a);
    localDatabaseFilter.save(paramz2, paramz3);
    if (localDatabaseFilter.getId() != -1L)
    {
      paramz2 = new ContentValues();
      paramz2.put("last_accessed_time", Long.valueOf(Calendar.getInstance().getTimeInMillis()));
      paramz2.put("term", b);
      paramz2.put("filter_id", Long.valueOf(localDatabaseFilter.getId()));
      c = Long.parseLong(paramz1.a("id", String.valueOf(c), paramz2));
      return;
    }
    c = -1L;
  }
  
  public String b()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (paramObject == null);
        bool1 = bool2;
      } while (getClass() != paramObject.getClass());
      paramObject = (k)paramObject;
      bool1 = bool2;
    } while (!a.equals(a));
    return b.equals(b);
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label39;
      }
    }
    for (;;)
    {
      return (i + 17) * 17 + j;
      i = a.hashCode();
      break;
      label39:
      j = b.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.savedsearch.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */