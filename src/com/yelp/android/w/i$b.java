package com.yelp.android.w;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Images.Thumbnails;

class i$b
  implements i.c
{
  private static final String[] a = { "_data" };
  
  public Cursor a(Context paramContext, Uri paramUri)
  {
    paramUri = paramUri.getLastPathSegment();
    return paramContext.getContentResolver().query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, a, "kind = 1 AND image_id = ?", new String[] { paramUri }, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.w.i.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */