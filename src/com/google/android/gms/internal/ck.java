package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesUtil;

@ey
public final class ck
{
  public static void a(Context paramContext, ck.b paramb)
  {
    if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramContext) != 0)
    {
      paramb.a(bn.by());
      return;
    }
    new ck.a(paramContext, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */