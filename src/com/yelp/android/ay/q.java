package com.yelp.android.ay;

import android.content.ContentValues;
import android.database.Cursor;
import com.yelp.android.database.z;

class q
  extends t
{
  public q(Cursor paramCursor)
  {
    super(paramCursor.getString(paramCursor.getColumnIndex("business_id")), paramCursor.getString(paramCursor.getColumnIndex("draft")));
  }
  
  public q(t paramt)
  {
    super(paramt);
  }
  
  public static t a(z paramz, String paramString)
  {
    t localt = new t(paramString, "");
    paramString = paramz.a("business_id", paramString);
    paramz = localt;
    if (paramString.isFirst()) {
      paramz = new q(paramString);
    }
    paramString.close();
    return paramz;
  }
  
  public void a(z paramz)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("business_id", a());
    localContentValues.put("draft", b());
    paramz.a("business_id", a(), localContentValues);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */