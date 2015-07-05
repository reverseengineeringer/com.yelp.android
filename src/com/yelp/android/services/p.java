package com.yelp.android.services;

import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import java.util.Comparator;

class p
  implements Comparator<ResolveInfo>
{
  private final PackageManager a;
  
  public p(PackageManager paramPackageManager)
  {
    a = paramPackageManager;
  }
  
  int a(ResolveInfo paramResolveInfo)
  {
    int i = preferredOrder + priority + 1;
    paramResolveInfo = new o(activityInfo);
    if ((paramResolveInfo.a()) || (paramResolveInfo.c()) || (paramResolveInfo.b())) {
      return i * 3;
    }
    if ((paramResolveInfo.e()) || (paramResolveInfo.d())) {
      return i * 2;
    }
    return -100;
  }
  
  public int a(ResolveInfo paramResolveInfo1, ResolveInfo paramResolveInfo2)
  {
    int i = a(paramResolveInfo1);
    int j = a(paramResolveInfo2);
    if (i == j)
    {
      paramResolveInfo1 = String.valueOf(paramResolveInfo1.loadLabel(a));
      return String.valueOf(paramResolveInfo2.loadLabel(a)).compareTo(paramResolveInfo1);
    }
    return i - j;
  }
  
  public boolean equals(Object paramObject)
  {
    return paramObject instanceof p;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */