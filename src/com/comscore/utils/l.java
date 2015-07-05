package com.comscore.utils;

import android.os.Build;
import java.io.File;

public class l
{
  public static boolean a()
  {
    if (b()) {}
    while (c()) {
      return true;
    }
    return false;
  }
  
  private static boolean b()
  {
    String str = Build.TAGS;
    return (str != null) && (str.contains("test-keys"));
  }
  
  private static boolean c()
  {
    try
    {
      boolean bool = new File("/system/app/Superuser.apk").exists();
      if (bool) {
        return true;
      }
    }
    catch (Exception localException) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */