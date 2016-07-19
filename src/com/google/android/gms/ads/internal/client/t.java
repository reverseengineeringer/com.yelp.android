package com.google.android.gms.ads.internal.client;

import android.app.Activity;
import android.content.Context;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.a;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.bf;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.eq;
import com.google.android.gms.internal.fa;
import com.google.android.gms.internal.fv;

@fv
public class t
{
  public static String a = null;
  private u b;
  
  public t()
  {
    a.a();
    if (a != null) {
      try
      {
        b = ((u)t.class.getClassLoader().loadClass(a).newInstance());
        return;
      }
      catch (Exception localException)
      {
        b.d("Failed to instantiate ClientApi class.", localException);
        b = new h();
        return;
      }
    }
    b.d("No client jar implementation found.");
    b = new h();
  }
  
  public aa a(Context paramContext, String paramString, dr paramdr, VersionInfoParcel paramVersionInfoParcel)
  {
    return b.a(paramContext, paramString, paramdr, paramVersionInfoParcel);
  }
  
  public ac a(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dr paramdr, VersionInfoParcel paramVersionInfoParcel)
  {
    return b.a(paramContext, paramAdSizeParcel, paramString, paramdr, paramVersionInfoParcel);
  }
  
  public bf a(FrameLayout paramFrameLayout1, FrameLayout paramFrameLayout2)
  {
    return b.a(paramFrameLayout1, paramFrameLayout2);
  }
  
  public fa a(Activity paramActivity)
  {
    return b.a(paramActivity);
  }
  
  public ac b(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dr paramdr, VersionInfoParcel paramVersionInfoParcel)
  {
    return b.b(paramContext, paramAdSizeParcel, paramString, paramdr, paramVersionInfoParcel);
  }
  
  public eq b(Activity paramActivity)
  {
    return b.b(paramActivity);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */