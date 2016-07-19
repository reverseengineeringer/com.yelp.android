package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.e;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

@fv
public class id
{
  public ib a(Context paramContext, AdSizeParcel paramAdSizeParcel, boolean paramBoolean1, boolean paramBoolean2, j paramj, VersionInfoParcel paramVersionInfoParcel)
  {
    return a(paramContext, paramAdSizeParcel, paramBoolean1, paramBoolean2, paramj, paramVersionInfoParcel, null, null);
  }
  
  public ib a(Context paramContext, AdSizeParcel paramAdSizeParcel, boolean paramBoolean1, boolean paramBoolean2, j paramj, VersionInfoParcel paramVersionInfoParcel, ax paramax, e parame)
  {
    paramContext = new ie(if.a(paramContext, paramAdSizeParcel, paramBoolean1, paramBoolean2, paramj, paramVersionInfoParcel, paramax, parame));
    paramContext.setWebViewClient(s.g().a(paramContext, paramBoolean2));
    paramContext.setWebChromeClient(s.g().c(paramContext));
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.id
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */