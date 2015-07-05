package com.yelp.android.ay;

import android.content.ContentValues;
import android.database.Cursor;
import com.yelp.android.database.z;

class p
  extends r
{
  public p(Cursor paramCursor)
  {
    super(paramCursor.getString(paramCursor.getColumnIndex("conversation_id")), paramCursor.getString(paramCursor.getColumnIndex("draft")));
  }
  
  public p(r paramr)
  {
    super(paramr.a(), paramr.b());
  }
  
  public static r a(z paramz, String paramString)
  {
    r localr = new r(paramString, "");
    paramString = paramz.a("conversation_id", paramString);
    paramz = localr;
    if (paramString.isFirst()) {
      paramz = new p(paramString);
    }
    paramString.close();
    return paramz;
  }
  
  public void a(z paramz)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("conversation_id", a());
    localContentValues.put("draft", b());
    paramz.a("conversation_id", a(), localContentValues);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */