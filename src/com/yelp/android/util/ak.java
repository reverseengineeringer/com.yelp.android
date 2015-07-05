package com.yelp.android.util;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;

public class ak
{
  public static Uri a()
  {
    return Uri.parse("content://com.yelp.android.services.YelpDataContentProvider");
  }
  
  public static void a(ContentResolver paramContentResolver, String paramString)
  {
    Uri localUri = Uri.withAppendedPath(a(), "ydid");
    ContentValues localContentValues = new ContentValues(1);
    localContentValues.put("ydid", paramString);
    paramContentResolver.insert(localUri, localContentValues);
  }
  
  public static boolean a(Uri paramUri, String paramString)
  {
    return (paramUri.getHost().equals(a().getHost())) && (paramUri.getLastPathSegment().equals(paramString));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */