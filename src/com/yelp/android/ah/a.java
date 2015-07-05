package com.yelp.android.ah;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.bumptech.glide.load.b;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

public final class a
{
  private static final ConcurrentHashMap<String, b> a = new ConcurrentHashMap();
  
  public static b a(Context paramContext)
  {
    String str = paramContext.getPackageName();
    b localb = (b)a.get(str);
    Object localObject = localb;
    if (localb == null)
    {
      paramContext = b(paramContext);
      localb = (b)a.putIfAbsent(str, paramContext);
      localObject = localb;
      if (localb == null) {
        localObject = paramContext;
      }
    }
    return (b)localObject;
  }
  
  private static b b(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
      if (paramContext != null)
      {
        paramContext = String.valueOf(versionCode);
        return new c(paramContext);
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        paramContext = null;
        continue;
        paramContext = UUID.randomUUID().toString();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ah.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */