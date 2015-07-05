package com.yelp.android.r;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Video.Thumbnails;

class q
  implements n
{
  public Cursor a(Context paramContext, Uri paramUri)
  {
    paramUri = paramUri.getLastPathSegment();
    return paramContext.getContentResolver().query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, new String[] { "_data" }, "video_id = ? AND kind = ?", new String[] { paramUri, String.valueOf(1) }, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.r.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */