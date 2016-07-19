package com.yelp.android.y;

import android.content.Context;
import java.io.File;

class f$1
  implements d.a
{
  f$1(Context paramContext, String paramString) {}
  
  public File a()
  {
    File localFile = a.getCacheDir();
    if (localFile == null) {
      return null;
    }
    if (b != null) {
      return new File(localFile, b);
    }
    return localFile;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.y.f.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */