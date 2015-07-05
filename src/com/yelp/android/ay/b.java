package com.yelp.android.ay;

import android.database.sqlite.SQLiteDatabase;
import com.yelp.android.database.v;
import com.yelp.android.database.z;
import com.yelp.android.serializable.User;

class b
  implements v
{
  b(a parama, User paramUser) {}
  
  public Object a(SQLiteDatabase paramSQLiteDatabase)
  {
    return o.a(new z(a.a(b), paramSQLiteDatabase), a.getUserId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */