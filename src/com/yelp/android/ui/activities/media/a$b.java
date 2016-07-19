package com.yelp.android.ui.activities.media;

import android.graphics.Bitmap;
import com.yelp.android.ui.util.MediaStoreUtil.MediaType;
import java.io.File;

public class a$b
{
  public File a;
  public Bitmap b;
  public MediaStoreUtil.MediaType c;
  
  public static b a(File paramFile, Bitmap paramBitmap, MediaStoreUtil.MediaType paramMediaType)
  {
    b localb = new b();
    a = paramFile;
    b = paramBitmap;
    c = paramMediaType;
    return localb;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.media.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */