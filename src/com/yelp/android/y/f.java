package com.yelp.android.y;

import android.content.Context;
import java.io.File;

public final class f
  extends d
{
  public f(Context paramContext)
  {
    this(paramContext, "image_manager_disk_cache", 262144000);
  }
  
  public f(Context paramContext, final String paramString, int paramInt)
  {
    super(new d.a()
    {
      public File a()
      {
        File localFile = getCacheDir();
        if (localFile == null) {
          return null;
        }
        if (paramString != null) {
          return new File(localFile, paramString);
        }
        return localFile;
      }
    }, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.y.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */