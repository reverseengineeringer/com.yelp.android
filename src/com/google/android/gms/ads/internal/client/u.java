package com.google.android.gms.ads.internal.client;

import android.app.Activity;
import android.content.Context;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.bf;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.eq;
import com.google.android.gms.internal.fa;

public abstract interface u
{
  public abstract aa a(Context paramContext, String paramString, dr paramdr, VersionInfoParcel paramVersionInfoParcel);
  
  public abstract ac a(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dr paramdr, VersionInfoParcel paramVersionInfoParcel);
  
  public abstract bf a(FrameLayout paramFrameLayout1, FrameLayout paramFrameLayout2);
  
  public abstract fa a(Activity paramActivity);
  
  public abstract ac b(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dr paramdr, VersionInfoParcel paramVersionInfoParcel);
  
  public abstract eq b(Activity paramActivity);
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */