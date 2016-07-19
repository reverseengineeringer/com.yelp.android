package com.google.android.gms.internal;

import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdRequest.Gender;
import com.google.ads.AdSize;
import com.google.ads.mediation.b;
import com.google.android.gms.ads.g;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import java.util.Date;
import java.util.HashSet;

@fv
public final class eh
{
  public static int a(AdRequest.ErrorCode paramErrorCode)
  {
    switch (1.b[paramErrorCode.ordinal()])
    {
    default: 
      return 0;
    case 2: 
      return 1;
    case 3: 
      return 2;
    }
    return 3;
  }
  
  public static AdRequest.Gender a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return AdRequest.Gender.UNKNOWN;
    case 2: 
      return AdRequest.Gender.FEMALE;
    }
    return AdRequest.Gender.MALE;
  }
  
  public static AdSize a(AdSizeParcel paramAdSizeParcel)
  {
    int i = 0;
    AdSize[] arrayOfAdSize = new AdSize[6];
    arrayOfAdSize[0] = AdSize.a;
    arrayOfAdSize[1] = AdSize.b;
    arrayOfAdSize[2] = AdSize.c;
    arrayOfAdSize[3] = AdSize.d;
    arrayOfAdSize[4] = AdSize.e;
    arrayOfAdSize[5] = AdSize.f;
    while (i < arrayOfAdSize.length)
    {
      if ((arrayOfAdSize[i].a() == f) && (arrayOfAdSize[i].b() == c)) {
        return arrayOfAdSize[i];
      }
      i += 1;
    }
    return new AdSize(g.a(f, c, b));
  }
  
  public static b a(AdRequestParcel paramAdRequestParcel)
  {
    if (e != null) {}
    for (HashSet localHashSet = new HashSet(e);; localHashSet = null) {
      return new b(new Date(b), a(d), localHashSet, f, k);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */