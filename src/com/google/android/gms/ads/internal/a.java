package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.client.ac;
import com.google.android.gms.ads.internal.client.u;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.bf;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.eq;
import com.google.android.gms.internal.fa;

public class a
  implements u
{
  public static void a()
  {
    com.google.android.gms.ads.internal.client.t.a = a.class.getName();
  }
  
  public aa a(Context paramContext, String paramString, dr paramdr, VersionInfoParcel paramVersionInfoParcel)
  {
    return new k(paramContext, paramString, paramdr, paramVersionInfoParcel, e.a());
  }
  
  public ac a(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dr paramdr, VersionInfoParcel paramVersionInfoParcel)
  {
    return new g(paramContext, paramAdSizeParcel, paramString, paramdr, paramVersionInfoParcel, e.a());
  }
  
  public bf a(FrameLayout paramFrameLayout1, FrameLayout paramFrameLayout2)
  {
    return new com.google.android.gms.ads.internal.formats.k(paramFrameLayout1, paramFrameLayout2);
  }
  
  public fa a(Activity paramActivity)
  {
    return new com.google.android.gms.ads.internal.purchase.e(paramActivity);
  }
  
  public ac b(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dr paramdr, VersionInfoParcel paramVersionInfoParcel)
  {
    if (((Boolean)ao.ae.c()).booleanValue()) {
      return new cw(paramContext, paramString, paramdr, paramVersionInfoParcel, e.a());
    }
    return new l(paramContext, paramAdSizeParcel, paramString, paramdr, paramVersionInfoParcel, e.a());
  }
  
  public eq b(Activity paramActivity)
  {
    return new zzd(paramActivity);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */