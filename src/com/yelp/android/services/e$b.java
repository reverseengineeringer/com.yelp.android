package com.yelp.android.services;

import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import java.util.Comparator;

public class e$b
  implements Comparator<ResolveInfo>
{
  private final PackageManager a;
  
  public e$b(PackageManager paramPackageManager)
  {
    a = paramPackageManager;
  }
  
  private int a(ResolveInfo paramResolveInfo)
  {
    int i = 0;
    while (i < e.a().length)
    {
      if (activityInfo.packageName.startsWith(e.a()[i])) {
        return i;
      }
      i += 1;
    }
    return e.a().length;
  }
  
  public int a(ResolveInfo paramResolveInfo1, ResolveInfo paramResolveInfo2)
  {
    int i = a(paramResolveInfo1);
    int j = a(paramResolveInfo2);
    if (i == j) {
      return String.valueOf(paramResolveInfo1.loadLabel(a)).compareTo(String.valueOf(paramResolveInfo2.loadLabel(a)));
    }
    return i - j;
  }
  
  public boolean equals(Object paramObject)
  {
    return paramObject instanceof b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.e.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */