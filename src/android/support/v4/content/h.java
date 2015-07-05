package android.support.v4.content;

import android.content.Context;
import java.io.File;

class h
{
  public static File[] a(Context paramContext)
  {
    return paramContext.getExternalCacheDirs();
  }
  
  public static File[] a(Context paramContext, String paramString)
  {
    return paramContext.getExternalFilesDirs(paramString);
  }
  
  public static File[] b(Context paramContext)
  {
    return paramContext.getObbDirs();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */