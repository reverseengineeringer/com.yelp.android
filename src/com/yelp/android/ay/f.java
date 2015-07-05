package com.yelp.android.ay;

import android.database.sqlite.SQLiteDatabase;
import com.yelp.android.database.v;
import com.yelp.android.database.z;
import com.yelp.android.serializable.Conversation;

class f
  implements v
{
  f(e parame, Conversation paramConversation) {}
  
  public Object a(SQLiteDatabase paramSQLiteDatabase)
  {
    return p.a(new z(e.a(b), paramSQLiteDatabase), a.getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */