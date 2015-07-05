package com.yelp.android.ay;

import android.database.sqlite.SQLiteDatabase;
import com.yelp.android.database.v;
import com.yelp.android.database.z;
import com.yelp.android.serializable.YelpBusiness;

class l
  implements v
{
  l(i parami, YelpBusiness paramYelpBusiness) {}
  
  public Object a(SQLiteDatabase paramSQLiteDatabase)
  {
    new z(i.a(b), paramSQLiteDatabase).b("business_id", a.getId());
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */