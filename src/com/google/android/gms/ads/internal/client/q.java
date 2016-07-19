package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.fv;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

@fv
public class q
{
  public static final q a = new q();
  
  public static q a()
  {
    return a;
  }
  
  public AdRequestParcel a(Context paramContext, b paramb)
  {
    Object localObject1 = paramb.a();
    long l;
    String str1;
    int i;
    label59:
    boolean bool1;
    int j;
    Location localLocation;
    Bundle localBundle;
    boolean bool2;
    String str2;
    if (localObject1 != null)
    {
      l = ((Date)localObject1).getTime();
      str1 = paramb.b();
      i = paramb.c();
      localObject1 = paramb.d();
      if (((Set)localObject1).isEmpty()) {
        break label231;
      }
      localObject1 = Collections.unmodifiableList(new ArrayList((Collection)localObject1));
      bool1 = paramb.a(paramContext);
      j = paramb.l();
      localLocation = paramb.e();
      localBundle = paramb.a(AdMobAdapter.class);
      bool2 = paramb.f();
      str2 = paramb.g();
      localObject2 = paramb.i();
      if (localObject2 == null) {
        break label237;
      }
    }
    label231:
    label237:
    for (Object localObject2 = new SearchAdRequestParcel((com.google.android.gms.ads.search.a)localObject2);; localObject2 = null)
    {
      Object localObject3 = null;
      Context localContext = paramContext.getApplicationContext();
      paramContext = (Context)localObject3;
      if (localContext != null)
      {
        paramContext = localContext.getPackageName();
        paramContext = v.a().a(Thread.currentThread().getStackTrace(), paramContext);
      }
      boolean bool3 = paramb.o();
      return new AdRequestParcel(7, l, localBundle, i, (List)localObject1, bool1, j, bool2, str2, (SearchAdRequestParcel)localObject2, localLocation, str1, paramb.k(), paramb.m(), Collections.unmodifiableList(new ArrayList(paramb.n())), paramb.h(), paramContext, bool3);
      l = -1L;
      break;
      localObject1 = null;
      break label59;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */