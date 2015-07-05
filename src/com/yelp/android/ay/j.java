package com.yelp.android.ay;

import android.database.sqlite.SQLiteDatabase;
import com.yelp.android.database.v;
import com.yelp.android.database.z;
import com.yelp.android.serializable.YelpBusiness;

class j
  implements v
{
  j(i parami, YelpBusiness paramYelpBusiness) {}
  
  public Object a(SQLiteDatabase paramSQLiteDatabase)
  {
    return q.a(new z(i.a(b), paramSQLiteDatabase), a.getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */