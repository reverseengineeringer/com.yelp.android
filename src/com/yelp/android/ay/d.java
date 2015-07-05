package com.yelp.android.ay;

import android.database.sqlite.SQLiteDatabase;
import com.yelp.android.database.v;
import com.yelp.android.database.z;
import com.yelp.android.serializable.User;

class d
  implements v
{
  d(a parama, User paramUser) {}
  
  public Object a(SQLiteDatabase paramSQLiteDatabase)
  {
    new z(a.a(b), paramSQLiteDatabase).b("user_id", a.getUserId());
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */