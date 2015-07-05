package com.yelp.android.services;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.yelp.android.util.ak;
import java.util.Collections;

public class YelpDataContentProvider
  extends ContentProvider
{
  private static final String[] a = { "ydid" };
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    throw new UnsupportedOperationException("Not implemented!");
  }
  
  public String getType(Uri paramUri)
  {
    return null;
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    if ((!ak.a(paramUri, "ydid")) || (!paramContentValues.containsKey("ydid")) || (paramContentValues.size() != 1)) {
      return null;
    }
    paramContentValues = paramContentValues.getAsString("ydid");
    getContext().getSharedPreferences("DataContentProvider", 4).edit().putString("ydid", paramContentValues).commit();
    return paramUri;
  }
  
  public boolean onCreate()
  {
    return true;
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    if (!ak.a(paramUri, "ydid")) {}
    do
    {
      return null;
      paramUri = getContext().getSharedPreferences("DataContentProvider", 4);
    } while (!paramUri.contains("ydid"));
    paramUri = paramUri.getString("ydid", null);
    paramArrayOfString1 = new MatrixCursor(a);
    paramArrayOfString1.addRow(Collections.singletonList(paramUri));
    return paramArrayOfString1;
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    throw new UnsupportedOperationException("Not implemented!");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.YelpDataContentProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */