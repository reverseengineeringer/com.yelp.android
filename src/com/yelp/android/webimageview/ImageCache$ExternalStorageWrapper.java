package com.yelp.android.webimageview;

import android.annotation.TargetApi;
import android.content.Context;
import java.io.File;

@TargetApi(8)
public class ImageCache$ExternalStorageWrapper
{
  public static File getExternalCacheDir(Context paramContext)
  {
    return paramContext.getExternalCacheDir();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.ImageCache.ExternalStorageWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */