package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import java.util.Iterator;
import java.util.Set;

public class r
{
  final String a;
  final String b;
  final String c;
  final long d;
  final long e;
  final EventParams f;
  
  r(ag paramag, String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2, Bundle paramBundle)
  {
    zzx.zzcM(paramString2);
    zzx.zzcM(paramString3);
    a = paramString2;
    b = paramString3;
    paramString2 = paramString1;
    if (TextUtils.isEmpty(paramString1)) {
      paramString2 = null;
    }
    c = paramString2;
    d = paramLong1;
    e = paramLong2;
    if ((e != 0L) && (e > d)) {
      paramag.f().c().a("Event created with reverse previous/current timestamps");
    }
    f = a(paramag, paramBundle);
  }
  
  private r(ag paramag, String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2, EventParams paramEventParams)
  {
    zzx.zzcM(paramString2);
    zzx.zzcM(paramString3);
    zzx.zzz(paramEventParams);
    a = paramString2;
    b = paramString3;
    paramString2 = paramString1;
    if (TextUtils.isEmpty(paramString1)) {
      paramString2 = null;
    }
    c = paramString2;
    d = paramLong1;
    e = paramLong2;
    if ((e != 0L) && (e > d)) {
      paramag.f().c().a("Event created with reverse previous/current timestamps");
    }
    f = paramEventParams;
  }
  
  private EventParams a(ag paramag, Bundle paramBundle)
  {
    if ((paramBundle != null) && (!paramBundle.isEmpty()))
    {
      paramBundle = new Bundle(paramBundle);
      Iterator localIterator = paramBundle.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (str == null)
        {
          localIterator.remove();
        }
        else
        {
          Object localObject = paramag.m().a(str, paramBundle.get(str));
          if (localObject == null) {
            localIterator.remove();
          } else {
            paramag.m().a(paramBundle, str, localObject);
          }
        }
      }
      return new EventParams(paramBundle);
    }
    return new EventParams(new Bundle());
  }
  
  r a(ag paramag, long paramLong)
  {
    return new r(paramag, c, a, b, d, paramLong, f);
  }
  
  public String toString()
  {
    return "Event{appId='" + a + '\'' + ", name='" + b + '\'' + ", params=" + f + '}';
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */