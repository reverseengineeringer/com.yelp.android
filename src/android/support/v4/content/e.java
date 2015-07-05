package android.support.v4.content;

import android.content.Context;
import java.io.File;

class e
{
  public static File a(Context paramContext)
  {
    return paramContext.getExternalCacheDir();
  }
  
  public static File a(Context paramContext, String paramString)
  {
    return paramContext.getExternalFilesDir(paramString);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */