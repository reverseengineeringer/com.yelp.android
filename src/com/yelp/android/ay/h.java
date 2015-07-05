package com.yelp.android.ay;

import android.database.sqlite.SQLiteDatabase;
import com.yelp.android.database.v;
import com.yelp.android.database.z;
import com.yelp.android.serializable.Conversation;

class h
  implements v
{
  h(e parame, Conversation paramConversation) {}
  
  public Object a(SQLiteDatabase paramSQLiteDatabase)
  {
    new z(e.a(b), paramSQLiteDatabase).b("conversation_id", a.getId());
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */