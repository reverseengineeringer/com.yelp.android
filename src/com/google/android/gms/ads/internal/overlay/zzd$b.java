package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.ib;

@fv
public class zzd$b
{
  public final int a;
  public final ViewGroup.LayoutParams b;
  public final ViewGroup c;
  public final Context d;
  
  public zzd$b(ib paramib)
    throws zzd.zza
  {
    b = paramib.getLayoutParams();
    ViewParent localViewParent = paramib.getParent();
    d = paramib.g();
    if ((localViewParent != null) && ((localViewParent instanceof ViewGroup)))
    {
      c = ((ViewGroup)localViewParent);
      a = c.indexOfChild(paramib.b());
      c.removeView(paramib.b());
      paramib.a(true);
      return;
    }
    throw new zzd.zza("Could not get the parent of the WebView for an overlay.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.zzd.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */