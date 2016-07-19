package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.kf;

@fv
public class d
{
  public void a(Context paramContext, AdOverlayInfoParcel paramAdOverlayInfoParcel)
  {
    a(paramContext, paramAdOverlayInfoParcel, true);
  }
  
  public void a(Context paramContext, AdOverlayInfoParcel paramAdOverlayInfoParcel, boolean paramBoolean)
  {
    if ((l == 4) && (d == null))
    {
      if (c != null) {
        c.e();
      }
      s.b().a(paramContext, b, j);
      return;
    }
    Intent localIntent = new Intent();
    localIntent.setClassName(paramContext, "com.google.android.gms.ads.AdActivity");
    localIntent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", n.e);
    localIntent.putExtra("shouldCallOnOverlayOpened", paramBoolean);
    AdOverlayInfoParcel.a(localIntent, paramAdOverlayInfoParcel);
    if (!kf.i()) {
      localIntent.addFlags(524288);
    }
    if (!(paramContext instanceof Activity)) {
      localIntent.addFlags(268435456);
    }
    s.e().a(paramContext, localIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */