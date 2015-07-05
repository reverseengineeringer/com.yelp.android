package com.yelp.android.database.savedsearch;

import android.database.sqlite.SQLiteDatabase;
import com.yelp.android.database.v;
import com.yelp.android.database.z;

class e
  implements v
{
  e(c paramc, k paramk) {}
  
  public Object a(SQLiteDatabase paramSQLiteDatabase)
  {
    z localz1 = new z(c.a(b), paramSQLiteDatabase);
    z localz2 = new z(c.c(b), paramSQLiteDatabase);
    paramSQLiteDatabase = new z(c.b(b), paramSQLiteDatabase);
    a.a(localz1, localz2, paramSQLiteDatabase);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.savedsearch.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */