package com.yelp.android.ay;

import android.content.ContentValues;
import android.database.Cursor;
import com.yelp.android.database.z;

class o
  extends m
{
  public o(Cursor paramCursor)
  {
    super(paramCursor.getString(paramCursor.getColumnIndex("user_id")), paramCursor.getString(paramCursor.getColumnIndex("subject")), paramCursor.getString(paramCursor.getColumnIndex("draft")));
  }
  
  public o(m paramm)
  {
    super(paramm.a(), paramm.b(), paramm.c());
  }
  
  public static m a(z paramz, String paramString)
  {
    m localm = new m(paramString, "", "");
    paramString = paramz.a("user_id", paramString);
    paramz = localm;
    if (paramString.isFirst()) {
      paramz = new o(paramString);
    }
    paramString.close();
    return paramz;
  }
  
  public void a(z paramz)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("user_id", a());
    localContentValues.put("subject", b());
    localContentValues.put("draft", c());
    paramz.a("user_id", a(), localContentValues);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */