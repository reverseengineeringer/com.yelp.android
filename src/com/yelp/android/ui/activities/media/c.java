package com.yelp.android.ui.activities.media;

import android.graphics.Bitmap;
import com.yelp.android.ui.util.MediaStoreUtil.MediaType;
import java.io.File;

public class c
{
  public File a;
  public Bitmap b;
  public MediaStoreUtil.MediaType c;
  
  public static c a(File paramFile, Bitmap paramBitmap, MediaStoreUtil.MediaType paramMediaType)
  {
    c localc = new c();
    a = paramFile;
    b = paramBitmap;
    c = paramMediaType;
    return localc;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.media.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */