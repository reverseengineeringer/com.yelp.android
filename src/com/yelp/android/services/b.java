package com.yelp.android.services;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.os.Binder;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.d;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

public class b
{
  private static String a(Signature paramSignature)
  {
    try
    {
      paramSignature = d.a(MessageDigest.getInstance("SHA-256").digest(paramSignature.toByteArray()));
      return paramSignature;
    }
    catch (NoSuchAlgorithmException paramSignature) {}
    return null;
  }
  
  private static Map<String, String> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(i.k(), i.m());
    return localHashMap;
  }
  
  public static boolean a(PackageManager paramPackageManager)
  {
    Map localMap = b(paramPackageManager);
    String[] arrayOfString = paramPackageManager.getPackagesForUid(Binder.getCallingUid());
    if (arrayOfString == null) {
      return false;
    }
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str = arrayOfString[i];
      if ((localMap.containsKey(str)) && (a(paramPackageManager, str, (String)localMap.get(str)))) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private static boolean a(PackageManager paramPackageManager, String paramString1, String paramString2)
  {
    try
    {
      paramPackageManager = getPackageInfo64signatures;
      if (paramPackageManager.length == 1)
      {
        boolean bool = paramString2.equals(a(paramPackageManager[0]));
        if (bool) {
          return true;
        }
      }
      return false;
    }
    catch (PackageManager.NameNotFoundException paramPackageManager) {}
    return false;
  }
  
  private static Map<String, String> b(PackageManager paramPackageManager)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(a());
    localHashMap.putAll(c(paramPackageManager));
    return localHashMap;
  }
  
  private static Map<String, String> c(PackageManager paramPackageManager)
  {
    HashMap localHashMap = new HashMap();
    String str = i.l();
    try
    {
      paramPackageManager = getPackageInfo64signatures;
      if (paramPackageManager.length != 1) {
        throw new SecurityException("The apk has " + paramPackageManager.length + " signatures, but should have only one signature!");
      }
    }
    catch (PackageManager.NameNotFoundException paramPackageManager)
    {
      YelpLog.remoteError(paramPackageManager);
      return localHashMap;
      localHashMap.put(str, a(paramPackageManager[0]));
      return localHashMap;
    }
    catch (SecurityException paramPackageManager)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */