package com.yelp.android.database.savedsearch;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.yelp.android.database.v;
import com.yelp.android.database.z;
import java.util.ArrayList;

class d
  implements v
{
  d(c paramc) {}
  
  public Object a(SQLiteDatabase paramSQLiteDatabase)
  {
    Cursor localCursor = new m(c.a(a), paramSQLiteDatabase).c();
    ArrayList localArrayList = new ArrayList();
    if (localCursor.moveToFirst())
    {
      paramSQLiteDatabase = new z(c.b(a), paramSQLiteDatabase);
      do
      {
        localArrayList.add(new k(localCursor, paramSQLiteDatabase.a("filter_id", String.valueOf(localCursor.getLong(localCursor.getColumnIndex("filter_join_id"))))));
      } while (localCursor.moveToNext());
    }
    localCursor.close();
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.savedsearch.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */